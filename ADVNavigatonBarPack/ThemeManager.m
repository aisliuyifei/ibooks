//
//  ThemeManager.m
//  ADVNavigatonBarPack
//
//  Created by Tope Abayomi on 05.03.13.
//  Copyright (c) 2013 Tope Abayomi. All rights reserved.
//

#import "ThemeManager.h"

@implementation ThemeManager

#pragma mark -
#pragma mark - First Themes Set

+ (void)applyFirstNavigationAppearanceWithImage:(UIImage *)menuBarImage backButton:(UIImage *)backButtonImage {
    
    [[UINavigationBar appearance] setBackgroundImage:menuBarImage forBarMetrics:UIBarMetricsDefault];
    
    backButtonImage = [backButtonImage
                                resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 9.0f, 0.0f, 5.0f)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIColor whiteColor], UITextAttributeTextColor,
      [UIFont boldSystemFontOfSize:10.0f], UITextAttributeFont,
      nil] forState:UIControlStateNormal];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor whiteColor], UITextAttributeTextColor,
                                                          [UIFont boldSystemFontOfSize:23.0f], UITextAttributeFont, [UIColor blackColor], UITextAttributeTextShadowColor,  [NSValue valueWithCGSize:CGSizeMake(0.0,1.0)], UITextAttributeTextShadowOffset,
                                                          nil]];
}

+ (void)applyFirstDarkNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"1-dark-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"1-dark-back-button.png"];
    
    [self applyFirstNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyFirstGreyNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"1-grey-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"1-grey-back-button.png"];
    
    [self applyFirstNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyFirstLightNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"1-light-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"1-light-back-button.png"];
    
    [self applyFirstNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyFirstThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem backgroundImage:(UIImage *)backgroundImage settingsButtonImage:(UIImage *)settingsButtonImage settingsBackgroundButtonImage:(UIImage *)settingsBackgroundButtonImage {
    
    UIImageView *background = [[UIImageView alloc] initWithImage:backgroundImage];
    [view addSubview:background];
    
    UIButton *settingsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    settingsButton.frame = CGRectMake(0.0f, 0.0f, settingsButtonImage.size.width, settingsButtonImage.size.height);
    [settingsButton setBackgroundImage:settingsBackgroundButtonImage forState:UIControlStateNormal];
    [settingsButton addTarget:view.window.rootViewController action:@selector(dismissController) forControlEvents:UIControlEventTouchUpInside];
    [settingsButton setImage:settingsButtonImage forState:UIControlStateNormal];
    
    navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:settingsButton];
}

+ (void)applyFirstDarkThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"1-dark-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"1-dark-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"1-dark-bar-button.png"];

    [self applyFirstThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applyFirstGreyThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"1-grey-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"1-grey-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"1-grey-bar-button.png"];

    [self applyFirstThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applyFirstLightThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"1-light-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"1-light-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"1-light-bar-button.png"];
    
    [self applyFirstThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

#pragma mark -
#pragma mark - Second Themes Set

+ (void)applySecondNavigationAppearanceWithImage:(UIImage *)menuBarImage backButton:(UIImage *)backButtonImage {
    
    [[UINavigationBar appearance] setBackgroundImage:menuBarImage forBarMetrics:UIBarMetricsDefault];
    
    backButtonImage = [backButtonImage
                       resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 9.0f, 0.0f, 5.0f)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIColor whiteColor], UITextAttributeTextColor,
      [UIFont boldSystemFontOfSize:12.0f], UITextAttributeFont,
      nil] forState:UIControlStateNormal];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor whiteColor], UITextAttributeTextColor,
                                                          [UIFont fontWithName:@"ChalkboardSE-Bold" size:19.0f], UITextAttributeFont, [UIColor blackColor], UITextAttributeTextShadowColor,  [NSValue valueWithCGSize:CGSizeMake(0.0,1.0)], UITextAttributeTextShadowOffset,
                                                          nil]];

}

+ (void)applySecondBlueNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"2-blue-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"2-blue-back-button.png"];
    
    [self applySecondNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applySecondGreenNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"2-green-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"2-green-back-button.png"];
    
    [self applySecondNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applySecondOrangeNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"2-orange-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"2-orange-back-button.png"];
    
    [self applySecondNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applySecondRedNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"2-red-menu-bar"];
    UIImage *backButtonImage = [UIImage imageNamed:@"2-red-back-button.png"];
    
    [self applySecondNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applySecondThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem backgroundImage:(UIImage *)backgroundImage settingsButtonImage:(UIImage *)settingsButtonImage settingsBackgroundButtonImage:(UIImage *)settingsBackgroundButtonImage {
    
    UIImageView *background = [[UIImageView alloc] initWithImage:backgroundImage];
    [view addSubview:background];
    
    UIButton *settingsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    settingsButton.frame = CGRectMake(0.0f, 0.0f, settingsButtonImage.size.width, settingsButtonImage.size.height);
    [settingsButton setBackgroundImage:settingsBackgroundButtonImage forState:UIControlStateNormal];
    [settingsButton addTarget:view.window.rootViewController action:@selector(dismissController) forControlEvents:UIControlEventTouchUpInside];
    [settingsButton setImage:settingsButtonImage forState:UIControlStateNormal];
    
    navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:settingsButton];
}

+ (void)applySecondBlueThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"2-blue-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"2-blue-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"2-blue-bar-button.png"];
    
    [self applySecondThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applySecondGreenThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"2-green-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"2-green-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"2-green-bar-button.png"];
    
    [self applySecondThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applySecondOrangeThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"2-orange-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"2-orange-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"2-orange-bar-button.png"];
    
    [self applySecondThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applySecondRedThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"2-red-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"2-red-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"2-red-bar-button.png"];
    
    [self applySecondThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

#pragma mark -
#pragma mark - Third Themes Set

+ (void)applyThirdNavigationAppearanceWithImage:(UIImage *)menuBarImage backButton:(UIImage *)backButtonImage {
    
    [[UINavigationBar appearance] setBackgroundImage:menuBarImage forBarMetrics:UIBarMetricsDefault];
    
    backButtonImage = [backButtonImage
                       resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 9.0f, 0.0f, 5.0f)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIColor whiteColor], UITextAttributeTextColor,
      [UIFont boldSystemFontOfSize:12.0f], UITextAttributeFont,
      [UIColor blackColor], UITextAttributeTextShadowColor,
      [NSValue valueWithCGSize:CGSizeMake(0.0,1.0)],UITextAttributeTextShadowOffset,
      nil] forState:UIControlStateNormal];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor whiteColor], UITextAttributeTextColor,
                                                          [UIFont systemFontOfSize:23.0f], UITextAttributeFont,
                                                          nil]];
}

+ (void)applyThirdBirchWoodNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"3-birch-wood-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"3-birch-wood-back-button.png"];
    
    [self applyThirdNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyThirdCherryWoodNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"3-cherry-wood-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"3-cherry-wood-back-button.png"];
    
    [self applyThirdNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyThirdOakWoodNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"3-oak-wood-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"3-oak-wood-back-button.png"];
    
    [self applyThirdNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyThirdThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem backgroundImage:(UIImage *)backgroundImage storeImage:(UIImage *)storeImage shadowImage:(UIImage *)shadowImage shelfImage:(UIImage *)shelfImage {
    
    UIImageView *background = [[UIImageView alloc] initWithImage:backgroundImage];
    [view addSubview:background];
    
    UIButton *storeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    storeButton.frame = CGRectMake(0.0f, 0.0f, storeImage.size.width, storeImage.size.height);
    [storeButton setBackgroundImage:storeImage forState:UIControlStateNormal];
    [storeButton addTarget:view.window.rootViewController action:@selector(dismissController) forControlEvents:UIControlEventTouchUpInside];
    [storeButton.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:12.0f]];
    [storeButton.titleLabel setShadowColor:[UIColor blackColor]];
    [storeButton.titleLabel setShadowOffset:CGSizeMake(0.0f, -1.0f)];
    [storeButton setTitle:@"下载新书" forState:UIControlStateNormal];
    [storeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:storeButton];
    
    UIImageView *shadowView = [[UIImageView alloc] initWithImage:shadowImage];
    [view addSubview:shadowView];
    
    UIImageView *firstShelf = [[UIImageView alloc] initWithImage:shelfImage];
    firstShelf.frame = CGRectMake(firstShelf.frame.origin.x, shadowView.frame.origin.y + shadowView.frame.size.height, firstShelf.frame.size.width, firstShelf.frame.size.height);
    [view addSubview:firstShelf];
    
    UIImageView *secondShelf = [[UIImageView alloc] initWithImage:shelfImage];
    secondShelf.frame = CGRectMake(secondShelf.frame.origin.x, firstShelf.frame.origin.y + firstShelf.frame.size.height, secondShelf.frame.size.width, secondShelf.frame.size.height);
    [view addSubview:secondShelf];
    
    UIImageView *thirdShelf = [[UIImageView alloc] initWithImage:shelfImage];
    thirdShelf.frame = CGRectMake(thirdShelf.frame.origin.x, secondShelf.frame.origin.y + secondShelf.frame.size.height, thirdShelf.frame.size.width, thirdShelf.frame.size.height);
    [view addSubview:thirdShelf];
}

+ (void)applyThirdBirchWoodThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"3-birch-wood-background.jpg"];
    UIImage *storeImage = [UIImage imageNamed:@"3-birch-wood-button.png"];
    UIImage *shadowImage = [UIImage imageNamed:@"3-birch-wood-underbar-shadow.png"];
    UIImage *shelfImage = [UIImage imageNamed:@"3-birch-wood-shelf.png"];
    
    [self applyThirdThemeWithView:view navItem:navItem backgroundImage:backgroundImage storeImage:storeImage shadowImage:shadowImage shelfImage:shelfImage];
}

+ (void)applyThirdCherryWoodThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"3-cherry-wood-background.jpg"];
    UIImage *storeImage = [UIImage imageNamed:@"3-cherry-wood-button.png"];
    UIImage *shadowImage = [UIImage imageNamed:@"3-cherry-wood-underbar-shadow.png"];
    UIImage *shelfImage = [UIImage imageNamed:@"3-cherry-wood-shelf.png"];
    
    [self applyThirdThemeWithView:view navItem:navItem backgroundImage:backgroundImage storeImage:storeImage shadowImage:shadowImage shelfImage:shelfImage];
}

+ (void)applyThirdOakWoodThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"3-oak-wood-background.jpg"];
    UIImage *storeImage = [UIImage imageNamed:@"3-oak-wood-button.png"];
    UIImage *shadowImage = [UIImage imageNamed:@"3-oak-wood-underbar-shadow.png"];
    UIImage *shelfImage = [UIImage imageNamed:@"3-oak-wood-shelf.png"];
    
    [self applyThirdThemeWithView:view navItem:navItem backgroundImage:backgroundImage storeImage:storeImage shadowImage:shadowImage shelfImage:shelfImage];
}

#pragma mark -
#pragma mark - Fourth Themes Set

+ (void)applyFourthNavigationAppearanceWithImage:(UIImage *)menuBarImage backButton:(UIImage *)backButtonImage andShadowColor:(UIColor*)shadowColor {
    
    [[UINavigationBar appearance] setBackgroundImage:menuBarImage forBarMetrics:UIBarMetricsDefault];
    
    backButtonImage = [backButtonImage
                       resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 0.0f, 0.0f, 15.0f)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTitleVerticalPositionAdjustment:-3.0f forBarMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor colorWithRed:218.0f/255.0f green:66.0f/255.0f blue:45.0f/255.0f alpha:1.0f], UITextAttributeTextColor,
                                                          [UIFont fontWithName:@"EuphemiaUCAS-Bold" size:19.0f], UITextAttributeFont,
                                                          shadowColor, UITextAttributeTextShadowColor,
                                                          [NSValue valueWithCGSize:CGSizeMake(0.0,1.0)],UITextAttributeTextShadowOffset,
                                                          nil]];
}

+ (void)applyFourthDarkNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"4-dark-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"4-dark-back-button.png"];
    UIColor* shadowColor = [UIColor blackColor];
    
    [self applyFourthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage andShadowColor:shadowColor];
}

+ (void)applyFourthGreyNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"4-grey-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"4-grey-back-button.png"];
    UIColor* shadowColor = [UIColor colorWithWhite:0.9f alpha:1.0f];
    
    [self applyFourthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage andShadowColor:shadowColor];
}

+ (void)applyFourthLightNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"4-light-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"4-light-back-button.png"];
    UIColor* shadowColor = [UIColor whiteColor];
    
    [self applyFourthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage andShadowColor:shadowColor];
}

+ (void)applyFourthThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem backgroundImage:(UIImage *)backgroundImage settingsButtonImage:(UIImage *)settingsButtonImage {
    
    UIImageView *background = [[UIImageView alloc] initWithImage:backgroundImage];
    [view addSubview:background];
    
    UIButton *settingsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    settingsButton.frame = CGRectMake(0.0f, 0.0f, settingsButtonImage.size.width, settingsButtonImage.size.height);
    [settingsButton setImage:settingsButtonImage forState:UIControlStateNormal];
    [settingsButton addTarget:view.window.rootViewController action:@selector(dismissController) forControlEvents:UIControlEventTouchUpInside];
    
    navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:settingsButton];
}

+ (void)applyFourthDarkThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"4-dark-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"4-dark-settings-button.png"];
    
    [self applyFourthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}

+ (void)applyFourthGreyThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"4-grey-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"4-grey-settings-button.png"];
    
    [self applyFourthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}

+ (void)applyFourthLightThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"4-light-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"4-light-settings-button.png"];
    
    [self applyFourthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}

#pragma mark -
#pragma mark - Fifth Themes Set

+ (void)applyFifthNavigationAppearanceWithImage:(UIImage *)menuBarImage backButton:(UIImage *)backButtonImage {
    
    [[UINavigationBar appearance] setBackgroundImage:menuBarImage forBarMetrics:UIBarMetricsDefault];
    
    backButtonImage = [backButtonImage
                       resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 0.0f, 0.0f, 20.0f)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor colorWithRed:175.0f/255.0f green:175.0f/255.0f blue:175.0f/255.0f alpha:0.01f], UITextAttributeTextColor,
                                                          [UIFont fontWithName:@"MarkerFelt-Wide" size:23.0f], UITextAttributeFont,
                                                          nil]];
}

+ (void)applyFifthBlueNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"5-blue-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"5-blue-back-button.png"];
    
    [self applyFifthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyFifthGreenNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"5-green-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"5-green-back-button.png"];
    
    [self applyFifthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyFifthMagentaNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"5-magenta-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"5-magenta-back-button.png"];
    
    [self applyFifthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyFifthOrangeNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"5-orange-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"5-orange-back-button.png"];
    
    [self applyFifthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyFifthRedNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"5-red-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"5-red-back-button.png"];
    
    [self applyFifthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyFifthThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem backgroundImage:(UIImage *)backgroundImage settingsButtonImage:(UIImage *)settingsButtonImage {
    
    UIImageView *background = [[UIImageView alloc] initWithImage:backgroundImage];
    [view addSubview:background];
    
    UIButton *settingsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    settingsButton.frame = CGRectMake(0.0f, 0.0f, settingsButtonImage.size.width, settingsButtonImage.size.height);
    [settingsButton setImage:settingsButtonImage forState:UIControlStateNormal];
    [settingsButton addTarget:view.window.rootViewController action:@selector(dismissController) forControlEvents:UIControlEventTouchUpInside];
    
    navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:settingsButton];
}

+ (void)applyFifthBlueThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"5-blue-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"5-blue-settings-button.png"];
    
    [self applyFifthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}

+ (void)applyFifthGreenThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"5-green-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"5-green-settings-button.png"];
    
    [self applyFifthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}

+ (void)applyFifthMagentaThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"5-magenta-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"5-magenta-settings-button.png"];
    
    [self applyFifthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}

+ (void)applyFifthOrangeThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"5-orange-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"5-orange-settings-button.png"];
    
    [self applyFifthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}

+ (void)applyFifthRedThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"5-red-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"5-red-settings-button.png"];
    
    [self applyFifthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}

#pragma mark -
#pragma mark - Sixth Themes Set

+ (void)applySixthNavigationAppearanceWithImage:(UIImage *)menuBarImage backButton:(UIImage *)backButtonImage {
    
    [[UINavigationBar appearance] setBackgroundImage:menuBarImage forBarMetrics:UIBarMetricsDefault];
    
    backButtonImage = [backButtonImage
                       resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 5.0f, 0.0f, 5.0f)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTitleVerticalPositionAdjustment:-1.0f forBarMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor whiteColor], UITextAttributeTextColor,
                                                          [UIFont fontWithName:@"BradleyHandITCTT-Bold" size:23.0f], UITextAttributeFont,
                                                          nil]];
}

+ (void)applySixthDarkNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"6-black-navigation-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"6-black-back-button.png"];
    
    [self applySixthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applySixthGreenNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"6-green-navigation-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"6-green-back-button.png"];
    
    [self applySixthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applySixthThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem navBar:(UINavigationBar *)navBar backgroundImage:(UIImage *)backgroundImage settingsButtonImage:(UIImage *)settingsButtonImage bottomMenuImage:(UIImage *)bottomMenuImage leftArrow:(UIImage *)leftArrow rightArrow:(UIImage *)rightArrow {
    
    navBar.translucent = YES;

    UIImageView *background = [[UIImageView alloc] initWithImage:backgroundImage];
    [view addSubview:background];
    
    UIButton *settingsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    settingsButton.frame = CGRectMake(0.0f, 0.0f, settingsButtonImage.size.width, settingsButtonImage.size.height);
    [settingsButton setImage:settingsButtonImage forState:UIControlStateNormal];
    [settingsButton addTarget:view.window.rootViewController action:@selector(dismissController) forControlEvents:UIControlEventTouchUpInside];
    
    navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:settingsButton];
    
    UIImageView *bottomView = [[UIImageView alloc] initWithImage:bottomMenuImage];
    bottomView.frame = CGRectMake(0.0f, view.frame.size.height - bottomView.frame.size.height, bottomView.frame.size.width, bottomView.frame.size.height);
    bottomView.userInteractionEnabled = YES;
    [view addSubview:bottomView];
    
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame = CGRectMake(0.0f, bottomView.frame.size.height - leftArrow.size.height, leftArrow.size.width, leftArrow.size.height);
    [leftButton setImage:leftArrow forState:UIControlStateNormal];
    [bottomView addSubview:leftButton];
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(bottomView.frame.size.width - rightArrow.size.width, bottomView.frame.size.height - rightArrow.size.height, rightArrow.size.width, rightArrow.size.height);
    [rightButton setImage:rightArrow forState:UIControlStateNormal];
    [bottomView addSubview:rightButton];
}

+ (void)applySixthDarkThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem navBar:(UINavigationBar *)navBar {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"6-black-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"6-black-settings-button.png"];
    UIImage *bottomMenuImage = [UIImage imageNamed:@"6-black-menu-bar.png"];
    UIImage *leftArrow = [UIImage imageNamed:@"6-black-back-arrow.png"];
    UIImage *rightArrow = [UIImage imageNamed:@"6-black-forward-arrow.png"];
    
    [self applySixthThemeWithView:view navItem:navItem navBar:navBar backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage bottomMenuImage:bottomMenuImage leftArrow:leftArrow rightArrow:rightArrow];
}

+ (void)applySixthGreenThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem navBar:(UINavigationBar *)navBar {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"6-green-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"6-green-settings-button.png"];
    UIImage *bottomMenuImage = [UIImage imageNamed:@"6-green-menu-bar.png"];
    UIImage *leftArrow = [UIImage imageNamed:@"6-green-back-arrow.png"];
    UIImage *rightArrow = [UIImage imageNamed:@"6-green-forward-arrow.png"];
    
    [self applySixthThemeWithView:view navItem:navItem navBar:navBar backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage bottomMenuImage:bottomMenuImage leftArrow:leftArrow rightArrow:rightArrow];
}

#pragma mark -
#pragma mark - Seventh Themes Set

+ (void)applySeventhNavigationAppearanceWithImage:(UIImage *)menuBarImage backButton:(UIImage *)backButtonImage titleColor:(UIColor*)titleColor {
    
    [[UINavigationBar appearance] setBackgroundImage:menuBarImage forBarMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIColor whiteColor], UITextAttributeTextColor,
      [UIFont fontWithName:@"Arial" size:13.0f], UITextAttributeFont,
      nil] forState:UIControlStateNormal];
    
    backButtonImage = [backButtonImage
                       resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 9.0f, 0.0f, 5.0f)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          titleColor, UITextAttributeTextColor,
                                                          [UIFont fontWithName:@"Avenir-Black" size:23.0f], UITextAttributeFont,
                                                          nil]];
}

+ (void)applySeventhForrestNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"7-forrest-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"7-forrest-back-button.png"];
    UIColor* titleColor = [UIColor colorWithRed:255.0f/255.0f green:253.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
    
    [self applySeventhNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage titleColor:titleColor];
}

+ (void)applySeventhNavyNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"7-navy-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"7-navy-back-button.png"];
    UIColor* titleColor = [UIColor colorWithRed:255.0f/255.0f green:253.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
    
    [self applySeventhNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage titleColor:titleColor];
}

+ (void)applySeventhPurpleNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"7-purple-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"7-purple-back-button.png"];
    UIColor* titleColor = [UIColor colorWithRed:255.0f/255.0f green:253.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
    
    [self applySeventhNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage titleColor:titleColor];
}

+ (void)applySeventhThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem backgroundImage:(UIImage *)backgroundImage settingsButtonImage:(UIImage *)settingsButtonImage settingsBackgroundButtonImage:(UIImage *)settingsBackgroundButtonImage {
    
    UIImageView *background = [[UIImageView alloc] initWithImage:backgroundImage];
    [view addSubview:background];
    
    UIButton *settingsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    settingsButton.frame = CGRectMake(0.0f, 0.0f, settingsButtonImage.size.width, settingsButtonImage.size.height);
    [settingsButton setBackgroundImage:settingsBackgroundButtonImage forState:UIControlStateNormal];
    [settingsButton addTarget:view.window.rootViewController action:@selector(dismissController) forControlEvents:UIControlEventTouchUpInside];
    [settingsButton setImage:settingsButtonImage forState:UIControlStateNormal];
    
    navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:settingsButton];
}

+ (void)applySeventhForrestThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"7-forrest-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"7-forrest-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"7-forrest-bar-button.png"];
    
    [self applySeventhThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applySeventhNavyThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"7-navy-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"7-navy-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"7-navy-bar-button.png"];
    
    [self applySeventhThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applySeventhPurpleThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"7-purple-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"7-purple-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"7-purple-bar-button.png"];
    
    [self applySeventhThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

#pragma mark -
#pragma mark - Eight Themes Set

+ (void)applyEighthNavigationAppearanceWithImage:(UIImage *)menuBarImage backButton:(UIImage *)backButtonImage {
    
    [[UINavigationBar appearance] setBackgroundImage:menuBarImage forBarMetrics:UIBarMetricsDefault];
    
    backButtonImage = [backButtonImage
                       resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 0.0f, 0.0f, 0.0f)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTitleVerticalPositionAdjustment:-2.0f forBarMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor colorWithRed:238.0f/255.0f green:241.0f/255.0f blue:236.0f/255.0f alpha:1.0f], UITextAttributeTextColor,
                                                          [UIFont fontWithName:@"TrebuchetMS" size:23.0f], UITextAttributeFont,
                                                          nil]];
}

+ (void)applyEighthBlueNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"8-blue-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"8-blue-back-button.png"];
    
    [self applyEighthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyEighthGreenNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"8-green-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"8-green-back-button.png"];
    
    [self applyEighthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyEighthRedNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"8-red-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"8-red-back-button.png"];
    
    [self applyEighthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyEighthThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem backgroundImage:(UIImage *)backgroundImage settingsButtonImage:(UIImage *)settingsButtonImage {
    
    UIImageView *background = [[UIImageView alloc] initWithImage:backgroundImage];
    [view addSubview:background];
    
    UIButton *settingsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    settingsButton.frame = CGRectMake(8.0f, 0.0f, settingsButtonImage.size.width, settingsButtonImage.size.height);
    [settingsButton setImage:settingsButtonImage forState:UIControlStateNormal];
    [settingsButton addTarget:view.window.rootViewController action:@selector(dismissController) forControlEvents:UIControlEventTouchUpInside];
    
    UIView *settingsView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, settingsButton.frame.size.width + 5.0f, settingsButton.frame.size.height)];
    settingsView.backgroundColor = [UIColor clearColor];
    [settingsView addSubview:settingsButton];
    
    navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:settingsView];
}

+ (void)applyEighthBlueThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"8-blue-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"8-blue-settings-button.png"];
    
    [self applyEighthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}

+ (void)applyEighthGreenThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"8-green-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"8-green-settings-button.png"];
    
    [self applyEighthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}

+ (void)applyEighthRedThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    UIImage *backgroundImage = [UIImage imageNamed:@"8-red-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"8-red-settings-button.png"];
    
    [self applyEighthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}

#pragma mark -
#pragma mark - Ninth Themes Set


+ (void)applyNinthNavigationAppearanceWithImage:(UIImage *)menuBarImage backButton:(UIImage *)backButtonImage {
    
    [[UINavigationBar appearance] setBackgroundImage:menuBarImage forBarMetrics:UIBarMetricsDefault];
    
    [[UIBarButtonItem appearance] setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIColor whiteColor], UITextAttributeTextColor,
      [UIFont boldSystemFontOfSize:12.0f], UITextAttributeFont,
      nil] forState:UIControlStateNormal];
    
    backButtonImage = [backButtonImage
                       resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 9.0f, 0.0f, 5.0f)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor colorWithRed:231.0f/255.0f green:231.0f/255.0f blue:231.0f/255.0f alpha:1.0f], UITextAttributeTextColor,
                                                          [UIFont fontWithName:@"Avenir-Black" size:23.0f], UITextAttributeFont,
                                                          nil]];
}

+ (void)applyNinth1NavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"9-menu-bar-a.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"9-back-button-a.png"];
    
    [self applyNinthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyNinth2NavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"9-menu-bar-a.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"9-back-button-b.png"];
    
    [self applyNinthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyNinth3NavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"9-menu-bar-a.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"9-back-button-c.png"];
    
    [self applyNinthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyNinth4NavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"9-menu-bar-a.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"9-back-button-d.png"];
    
    [self applyNinthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyNinth5NavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"9-menu-bar-b.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"9-back-button-a.png"];
    
    [self applyNinthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyNinth6NavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"9-menu-bar-b.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"9-back-button-b.png"];
    
    [self applyNinthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyNinth7NavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"9-menu-bar-b.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"9-back-button-c.png"];
    
    [self applyNinthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyNinth8NavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"9-menu-bar-b.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"9-back-button-d.png"];
    
    [self applyNinthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage];
}

+ (void)applyNinthThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem backgroundImage:(UIImage *)backgroundImage settingsButtonImage:(UIImage *)settingsButtonImage settingsBackgroundButtonImage:(UIImage *)settingsBackgroundButtonImage {
    
    UIImageView *background = [[UIImageView alloc] initWithImage:backgroundImage];
    [view addSubview:background];
    
    UIButton *settingsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    settingsButton.frame = CGRectMake(0.0f, 0.0f, settingsButtonImage.size.width, settingsButtonImage.size.height);
    [settingsButton setBackgroundImage:settingsBackgroundButtonImage forState:UIControlStateNormal];
    [settingsButton addTarget:view.window.rootViewController action:@selector(dismissController) forControlEvents:UIControlEventTouchUpInside];
    [settingsButton setImage:settingsButtonImage forState:UIControlStateNormal];
    
    navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:settingsButton];
}

+ (void)applyNinth1ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"9-background-a.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"9-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"9-blank-button-a.png"];
    
    [self applyNinthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applyNinth2ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"9-background-a.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"9-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"9-blank-button-b.png"];
    
    [self applyNinthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applyNinth3ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"9-background-a.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"9-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"9-blank-button-c.png"];
    
    [self applyNinthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applyNinth4ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"9-background-a.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"9-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"9-blank-button-d.png"];
    
    [self applyNinthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applyNinth5ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"9-background-b.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"9-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"9-blank-button-a.png"];
    
    [self applyNinthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applyNinth6ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"9-background-b.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"9-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"9-blank-button-b.png"];
    
    [self applyNinthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applyNinth7ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"9-background-b.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"9-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"9-blank-button-c.png"];
    
    [self applyNinthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

+ (void)applyNinth8ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem {
    
    UIImage *backgroundImage = [UIImage imageNamed:@"9-background-b.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"9-settings-button.png"];
    UIImage *barButtonImage = [UIImage imageNamed:@"9-blank-button-d.png"];
    
    [self applyNinthThemeWithView:view navItem:navItem backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage settingsBackgroundButtonImage:barButtonImage];
}

#pragma mark -
#pragma mark - Tenth Themes Set

+ (void)applyTenthNavigationAppearanceWithImage:(UIImage *)menuBarImage backButton:(UIImage *)backButtonImage titleColor:(UIColor *)titleColor shadowColor:(UIColor*)shadowColor {
    
    [[UINavigationBar appearance] setBackgroundImage:menuBarImage forBarMetrics:UIBarMetricsDefault];
    
    backButtonImage = [backButtonImage
                       resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 30.0f, 0.0f, 0.0f)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTitleVerticalPositionAdjustment:1.0f forBarMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          titleColor, UITextAttributeTextColor,
                                                          [UIFont boldSystemFontOfSize:17], UITextAttributeFont, shadowColor, UITextAttributeTextShadowColor,  [NSValue valueWithCGSize:CGSizeMake(0.0,1.0)], UITextAttributeTextShadowOffset,
                                                          nil]];
   
}

+ (void)applyTenthDarkNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"10-dark-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"10-dark-back-button.png"];
    
    UIColor *color = [UIColor whiteColor];
    UIColor *shadowColor = [UIColor clearColor];
    
    [self applyTenthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage titleColor:color shadowColor:shadowColor];
}

+ (void)applyTenthLightNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"10-light-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"10-light-back-button.png"];
    
    UIColor *color = [UIColor colorWithRed:150.0f/255.0f green:149.0f/255.0f blue:149.0f/255.0f alpha:1.0f];
    UIColor* shadowColor = [UIColor colorWithWhite:1.0 alpha:1.0];
    
    [self applyTenthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage titleColor:color shadowColor:shadowColor];
    
}

+ (void)applyTenthMediumNavigationAppearance {
    UIImage *menuBarImage = [UIImage imageNamed:@"10-medium-menu-bar.png"];
    UIImage *backButtonImage = [UIImage imageNamed:@"10-medium-back-button.png"];
    
    UIColor *color = [UIColor colorWithRed:0.3f green:0.3f blue:0.3f alpha:1.0f];
    UIColor* shadowColor = [UIColor colorWithWhite:0.8 alpha:1.0];
    
    [self applyTenthNavigationAppearanceWithImage:menuBarImage backButton:backButtonImage titleColor:color shadowColor:shadowColor];

}

+ (void)applyTenthThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem navBar:(UINavigationBar *)navBar
 backgroundImage:(UIImage *)backgroundImage settingsButtonImage:(UIImage *)settingsButtonImage {
    
    navBar.translucent = YES;
    
    UIImageView *background = [[UIImageView alloc] initWithImage:backgroundImage];
    [view addSubview:background];
    
    UIButton *settingsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    settingsButton.frame = CGRectMake(0.0f, 0.0f, settingsButtonImage.size.width + 20.0f, settingsButtonImage.size.height);
    [settingsButton setImage:settingsButtonImage forState:UIControlStateNormal];
    [settingsButton addTarget:view.window.rootViewController action:@selector(dismissController) forControlEvents:UIControlEventTouchUpInside];
    
    navItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:settingsButton];
}

+ (void)applyTenthDarkThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem navBar:(UINavigationBar *)navBar {
    UIImage *backgroundImage = [UIImage imageNamed:@"10-dark-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"10-dark-settings-button.png"];
    
    [self applyTenthThemeWithView:view navItem:navItem navBar:navBar backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}

+ (void)applyTenthLightThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem navBar:(UINavigationBar *)navBar {
    UIImage *backgroundImage = [UIImage imageNamed:@"10-light-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"10-light-settings-button.png"];
    
    [self applyTenthThemeWithView:view navItem:navItem navBar:navBar backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}

+ (void)applyTenthMediumThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem navBar:(UINavigationBar *)navBar {
    UIImage *backgroundImage = [UIImage imageNamed:@"10-medium-background.jpg"];
    UIImage *settingsButtonImage = [UIImage imageNamed:@"10-medium-settings-button.png"];
    
    [self applyTenthThemeWithView:view navItem:navItem navBar:navBar backgroundImage:backgroundImage settingsButtonImage:settingsButtonImage];
}



@end
