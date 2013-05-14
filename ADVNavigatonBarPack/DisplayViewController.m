//
//  DisplayViewController.m
//  ADVNavigatonBarPack
//
//  Created by wupeng on 13-5-14.
//  Copyright (c) 2013年 Vladimir Kozlovskyi. All rights reserved.
//

#import "DisplayViewController.h"
#import "ThemeManager.h"
#import "AppDelegate.h"
#import "ReaderDocument.h"
#import "ReaderThumbRequest.h"
#import "ReaderThumbCache.h"

@interface DisplayViewController () {
    Theme _theme;
}

@end

@implementation DisplayViewController
@synthesize page = _page;
- (id)initWithTheme:(Theme)theme
{
    self = [super init];
    self.title = @"程序猿的书库";
    if (self) {
        _theme = theme;
    }
    return self;
}

-(id)initWithPageNumber:(int)pageNumber{
    self = [super init];
    if (self) {
        self.page = pageNumber;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [ThemeManager applyThirdOakWoodThemeWithView:self.view navItem:self.navigationItem];
    NSArray *pdfs = [[NSBundle mainBundle] pathsForResourcesOfType:@"pdf" inDirectory:nil];
    int pdfCount = [pdfs count];
    for (int i = self.page*9+0; i<pdfCount && i<(self.page+1)*9; i++) {
        NSLog(@"%d",i);
        int row = (i-self.page*9)/3;
        int col = i%3;
        NSString *filePath = [pdfs objectAtIndex:i];
        ReaderThumbView *thumbView = [[ReaderThumbView alloc] initWithFrame:CGRectMake(col*100+PADDING_W,row* SHELF_HEIGHT +PADDING_H,THUMB_W,THUMB_W*1.35)];
                                                                                           
        [self getThumbnailImage:filePath thumbView:thumbView];
        
        thumbView.backgroundColor = [UIColor whiteColor];
        [thumbView setUserInteractionEnabled:YES];
        thumbView.tag = i;
        UITapGestureRecognizer *gr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(taped:)];
        [thumbView addGestureRecognizer:gr];
        [self.view addSubview:thumbView];
    }
}

-(void)taped:(id)sender{
    UITapGestureRecognizer *gr = (UITapGestureRecognizer *)sender;
   
    UIImageView *imageView = (UIImageView *) gr.view;
    int i = [imageView tag];
//    NSLog(@"%d taped",i);
    NSString *phrase = nil; // Document password (for unlocking most encrypted PDF files)

    NSArray *pdfs = [[NSBundle mainBundle] pathsForResourcesOfType:@"pdf" inDirectory:nil];
    
	NSString *filePath = [pdfs objectAtIndex:i]; assert(filePath != nil); // Path to last PDF file
    
	ReaderDocument *document = [ReaderDocument withDocumentFilePath:filePath password:phrase];
    

    ReaderViewController *readerViewController = [[ReaderViewController alloc] initWithReaderDocument:document];
    
    readerViewController.delegate = self; // Set the ReaderViewController delegate to self
    
    [self.navigationController pushViewController:readerViewController animated:YES];
    [self.navigationController setNavigationBarHidden:YES];

}


-(UIImage *)getThumbnailImage:(NSString *)filePath thumbView:(ReaderThumbView *)thumbView{
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:filePath isDirectory:NO];
    NSString *phrase = nil;
    CGSize size = CGSizeMake(120,120); // Get the cell's maximum content size
	ReaderDocument *document = [ReaderDocument withDocumentFilePath:filePath password:phrase];
    
	NSString *guid = document.guid;

    ReaderThumbRequest *thumbRequest = [ReaderThumbRequest forView:thumbView  fileURL:fileURL password:nil guid:guid page:1 size:size];
    
	UIImage *image = [[ReaderThumbCache sharedInstance] thumbRequest:thumbRequest priority:YES]; // Request the thumbnail
    return image;
}

- (UIImage *)buildThumbnailImage:(CGPDFDocumentRef)pdfDocument
{
    CGPDFPageRef pdfPage = CGPDFDocumentGetPage(pdfDocument, 1);  // get the first page for your thumbnail

    BOOL hasRetinaDisplay = FALSE;  // by default
    CGFloat pixelsPerPoint = 1.0;  // by default (pixelsPerPoint is just the "scale" property of the screen)
    
    if ([UIScreen instancesRespondToSelector:@selector(scale)])  // the "scale" property is only present in iOS 4.0 and later
    {
        // we are running iOS 4.0 or later, so we may be on a Retina display;  we need to check further...
        if ((pixelsPerPoint = [[UIScreen mainScreen] scale]) == 1.0)
            hasRetinaDisplay = FALSE;
        else
            hasRetinaDisplay = TRUE;
    }
    else
    {
        // we are NOT running iOS 4.0 or later, so we can be sure that we are NOT on a Retina display
        pixelsPerPoint = 1.0;
        hasRetinaDisplay = FALSE;
    }
    CGRect cropBox = CGPDFPageGetBoxRect(pdfPage, kCGPDFCropBox);

    size_t imageWidth = cropBox.size.width/2;  // width of thumbnail in points
    size_t imageHeight = cropBox.size.height/2;  // height of thumbnail in points
    
    if (hasRetinaDisplay)
    {
        imageWidth *= pixelsPerPoint;
        imageHeight *= pixelsPerPoint;
    }
    
    size_t bytesPerPixel = 4;  // RGBA
    size_t bitsPerComponent = 8;
    size_t bytesPerRow = bytesPerPixel * imageWidth;
    
    void *bitmapData = malloc(imageWidth * imageHeight * bytesPerPixel);
    
    // in the event that we were unable to mallocate the heap memory for the bitmap,
    // we just abort and preemptively return nil:
    if (bitmapData == NULL)
        return nil;
    
    // remember to zero the buffer before handing it off to the bitmap context:
    bzero(bitmapData, imageWidth * imageHeight * bytesPerPixel);
    
    CGContextRef theContext = CGBitmapContextCreate(bitmapData, imageWidth, imageHeight, bitsPerComponent, bytesPerRow,
                                                    CGColorSpaceCreateDeviceRGB(), kCGImageAlphaPremultipliedLast);
    
    //CGPDFDocumentRef pdfDocument = MyGetPDFDocumentRef();  // NOTE: you will need to modify this line to supply the CGPDFDocumentRef for your file here...
    
    CGAffineTransform shrinkingTransform =
    CGPDFPageGetDrawingTransform(pdfPage, kCGPDFMediaBox, CGRectMake(0, 0, imageWidth, imageHeight), 0, YES);
    
    CGContextConcatCTM(theContext, shrinkingTransform);
    
    CGContextDrawPDFPage(theContext, pdfPage);  // draw the pdfPage into the bitmap context
    CGPDFDocumentRelease(pdfDocument);
    
    //
    // create the CGImageRef (and thence the UIImage) from the context (with its bitmap of the pdf page):
    //
    CGImageRef theCGImageRef = CGBitmapContextCreateImage(theContext);
    free(CGBitmapContextGetData(theContext));  // this frees the bitmapData we malloc'ed earlier
    CGContextRelease(theContext);
    
    UIImage *theUIImage;
    
    // CAUTION: the method imageWithCGImage:scale:orientation: only exists on iOS 4.0 or later!!!
    if ([UIImage respondsToSelector:@selector(imageWithCGImage:scale:orientation:)])
    {
        theUIImage = [UIImage imageWithCGImage:theCGImageRef scale:pixelsPerPoint orientation:UIImageOrientationUp];
    }
    else
    {
        theUIImage = [UIImage imageWithCGImage:theCGImageRef];
    }
    
    CFRelease(theCGImageRef);
    return theUIImage;
}



- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
}


#pragma mark ReaderViewControllerDelegate methods

- (void)dismissReaderViewController:(ReaderViewController *)viewController
{
	[self.navigationController popViewControllerAnimated:YES];
    [self.navigationController setNavigationBarHidden:NO];

}


@end
