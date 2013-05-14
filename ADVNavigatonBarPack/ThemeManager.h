//
//  ThemeManager.h
//  ADVNavigatonBarPack
//
//  Created by Tope Abayomi on 05.03.13.
//  Copyright (c) 2013 Tope Abayomi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ThemeManager : NSObject
+ (void)applyFirstDarkThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyFirstGreyThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyFirstLightThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyFirstDarkNavigationAppearance;
+ (void)applyFirstGreyNavigationAppearance;
+ (void)applyFirstLightNavigationAppearance;

+ (void)applySecondBlueThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applySecondGreenThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applySecondOrangeThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applySecondRedThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applySecondBlueNavigationAppearance;
+ (void)applySecondGreenNavigationAppearance;
+ (void)applySecondOrangeNavigationAppearance;
+ (void)applySecondRedNavigationAppearance;

+ (void)applyThirdBirchWoodThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyThirdCherryWoodThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyThirdOakWoodThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyThirdBirchWoodNavigationAppearance;
+ (void)applyThirdCherryWoodNavigationAppearance;
+ (void)applyThirdOakWoodNavigationAppearance;

+ (void)applyFourthDarkThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyFourthGreyThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyFourthLightThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyFourthDarkNavigationAppearance;
+ (void)applyFourthGreyNavigationAppearance;
+ (void)applyFourthLightNavigationAppearance;

+ (void)applyFifthBlueThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyFifthGreenThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyFifthMagentaThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyFifthOrangeThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyFifthRedThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyFifthBlueNavigationAppearance;
+ (void)applyFifthGreenNavigationAppearance;
+ (void)applyFifthMagentaNavigationAppearance;
+ (void)applyFifthOrangeNavigationAppearance;
+ (void)applyFifthRedNavigationAppearance;

+ (void)applySixthDarkThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem navBar:(UINavigationBar *)navBar;
+ (void)applySixthGreenThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem navBar:(UINavigationBar *)navBar;
+ (void)applySixthDarkNavigationAppearance;
+ (void)applySixthGreenNavigationAppearance;

+ (void)applySeventhForrestThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applySeventhNavyThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applySeventhPurpleThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applySeventhForrestNavigationAppearance;
+ (void)applySeventhNavyNavigationAppearance;
+ (void)applySeventhPurpleNavigationAppearance;

+ (void)applyEighthBlueThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyEighthGreenThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyEighthRedThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyEighthBlueNavigationAppearance;
+ (void)applyEighthGreenNavigationAppearance;
+ (void)applyEighthRedNavigationAppearance;

+ (void)applyNinth1ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyNinth2ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyNinth3ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyNinth4ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyNinth5ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyNinth6ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyNinth7ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyNinth8ThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem;
+ (void)applyNinth1NavigationAppearance;
+ (void)applyNinth2NavigationAppearance;
+ (void)applyNinth3NavigationAppearance;
+ (void)applyNinth4NavigationAppearance;
+ (void)applyNinth5NavigationAppearance;
+ (void)applyNinth6NavigationAppearance;
+ (void)applyNinth7NavigationAppearance;
+ (void)applyNinth8NavigationAppearance;

+ (void)applyTenthDarkThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem navBar:(UINavigationBar *)navBar;
+ (void)applyTenthLightThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem navBar:(UINavigationBar *)navBar;
+ (void)applyTenthMediumThemeWithView:(UIView *)view navItem:(UINavigationItem *)navItem navBar:(UINavigationBar *)navBar;
+ (void)applyTenthDarkNavigationAppearance;
+ (void)applyTenthLightNavigationAppearance;
+ (void)applyTenthMediumNavigationAppearance;
@end
