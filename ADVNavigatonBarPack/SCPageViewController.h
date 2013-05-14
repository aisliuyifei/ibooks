//
//  SCPageViewController.h
//  ADVNavigatonBarPack
//
//  Created by wupeng on 13-5-14.
//  Copyright (c) 2013年 Vladimir Kozlovskyi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReaderViewController.h"
#import "ThemeManager.h"
#import "Constants.h"

@interface SCPageViewController : UIViewController<ReaderViewControllerDelegate,UIScrollViewDelegate>{
    Theme _theme;
    
}
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIPageControl *pageControl;
@property (nonatomic, strong) NSMutableArray *viewControllers;
- (id)initWithTheme:(Theme)theme;

@end
