//
//  SCPageViewController.m
//  ADVNavigatonBarPack
//
//  Created by wupeng on 13-5-14.
//  Copyright (c) 2013年 Vladimir Kozlovskyi. All rights reserved.
//

#import "SCPageViewController.h"
#import "DisplayViewController.h"
#import "AppDelegate.h"
#import "ReaderDocument.h"
#import "ReaderThumbRequest.h"
#import "ReaderThumbCache.h"

@implementation SCPageViewController
@synthesize scrollView = _scrollView,viewControllers = _viewControllers,pageControl = _pageControl;
- (id)initWithTheme:(Theme)theme
{
    self = [super init];
    self.title = @"程序猿的书库";
    if (self) {
        _theme = theme;
        _scrollView = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 320, 20)];
        _viewControllers = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [ThemeManager applyThirdOakWoodThemeWithView:self.view navItem:self.navigationItem];
    NSArray *pdfs = [[NSBundle mainBundle] pathsForResourcesOfType:@"pdf" inDirectory:nil];
    int contentsCount = [pdfs count];
    int numberPages = (contentsCount-1)/9+1;
    for (NSUInteger i = 0; i < numberPages; i++)
    {
		[_viewControllers addObject:[NSNull null]];
    }

    self.scrollView.pagingEnabled = YES;
    self.scrollView.contentSize =
    CGSizeMake(CGRectGetWidth(self.scrollView.frame) * numberPages, CGRectGetHeight(self.scrollView.frame));
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.scrollsToTop = NO;
    self.scrollView.delegate = self;
    self.scrollView.bounces = NO;
    
    self.pageControl.numberOfPages = numberPages;
    self.pageControl.currentPage = 0;
    [self.pageControl hidesForSinglePage];
    [self.pageControl addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventEditingChanged];
    
    [self loadScrollViewWithPage:0];
    [self loadScrollViewWithPage:1];
    [self.view addSubview:self.scrollView];
    [self.view addSubview:self.pageControl];
}

- (void)loadScrollViewWithPage:(NSUInteger)page
{
    if (page >= self.pageControl.numberOfPages)
        return;
    
    // replace the placeholder if necessary
    DisplayViewController *controller = [self.viewControllers objectAtIndex:page];
    if ((NSNull *)controller == [NSNull null])
    {
        controller = [[DisplayViewController alloc] initWithPageNumber:page];
        [self.viewControllers replaceObjectAtIndex:page withObject:controller];
    }
    
    // add the controller's view to the scroll view
    if (controller.view.superview == nil)
    {
        CGRect frame = self.scrollView.frame;
        frame.origin.x = CGRectGetWidth(frame) * page;
        frame.origin.y = 0;
        controller.view.frame = frame;
        
        [self addChildViewController:controller];
        [self.scrollView addSubview:controller.view];
        [controller didMoveToParentViewController:self];
    }
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    // switch the indicator when more than 50% of the previous/next page is visible
    CGFloat pageWidth = CGRectGetWidth(self.scrollView.frame);
    NSUInteger page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
    
    // load the visible page and the page on either side of it (to avoid flashes when the user starts scrolling)
    [self loadScrollViewWithPage:page - 1];
    [self loadScrollViewWithPage:page];
    [self loadScrollViewWithPage:page + 1];
    
    // a possible optimization would be to unload the views+controllers which are no longer visible
}
- (void)gotoPage:(BOOL)animated
{
    NSInteger page = self.pageControl.currentPage;
    
    // load the visible page and the page on either side of it (to avoid flashes when the user starts scrolling)
    [self loadScrollViewWithPage:page - 1];
    [self loadScrollViewWithPage:page];
    [self loadScrollViewWithPage:page + 1];
    
	// update the scroll view to the appropriate page
    CGRect bounds = self.scrollView.bounds;
    bounds.origin.x = CGRectGetWidth(bounds) * page;
    bounds.origin.y = 0;
    [self.scrollView scrollRectToVisible:bounds animated:animated];
}

- (IBAction)changePage:(id)sender
{
    [self gotoPage:YES];
}

@end
