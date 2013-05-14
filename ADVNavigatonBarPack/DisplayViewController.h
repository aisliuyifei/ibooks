//
//  DisplayViewController.h
//  ADVNavigatonBarPack
//
//  Created by wupeng on 13-5-14.
//  Copyright (c) 2013年 Vladimir Kozlovskyi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"
#import "ReaderViewController.h"

@interface DisplayViewController : UIViewController<ReaderViewControllerDelegate>{
}
@property (nonatomic,assign)int page;
- (id)initWithTheme:(Theme)theme;
- (id)initWithPageNumber:(int)pageNumber;
@end
