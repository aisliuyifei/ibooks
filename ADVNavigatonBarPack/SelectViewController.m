//
//  SelectViewController.m
//  ADVNavigatonBarPack
//
//  Created by Tope Abayomi on 04.03.13.
//  Copyright (c) 2013 Tope Abayomi. All rights reserved.
//

#import "SelectViewController.h"
#import "Constants.h"
#import "DisplayViewController.h"
#import "ThemeManager.h"
#import "AppDelegate.h"

@interface SelectViewController ()

@end

@implementation SelectViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /********** Table View **********/
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

- (void)dismissController {
    
    ((AppDelegate *)[[UIApplication sharedApplication] delegate]).pushedSecondController = NO;
    [self dismissModalViewControllerAnimated:YES];
}

#pragma mark - 
#pragma mark - UITableViewDelegate & UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"SelectTableViewCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    switch (indexPath.row) {
        case kFirstDarkTheme:
            cell.textLabel.text = @"Piccadilly - 1";
            break;
        case kFirstGrayTheme:
            cell.textLabel.text = @"Piccadilly - 2";
            break;
        case kFirstLightTheme:
            cell.textLabel.text = @"Piccadilly - 3";
            break;
        case kSecondBlueTheme:
            cell.textLabel.text = @"Vauxhall - Blue";
            break;
        case kSecondGreenTheme:
            cell.textLabel.text = @"Vauxhall - Green";
            break;
        case kSecondOrangeTheme:
            cell.textLabel.text = @"Vauxhall Orange";
            break;
        case kSecondRedTheme:
            cell.textLabel.text = @"Vauxhall Red";
            break;
        case kThirdBirchWoodTheme:
            cell.textLabel.text = @"Pimlico - Birch Wood";
            break;
        case kThirdCherryWoodTheme:
            cell.textLabel.text = @"Pimlico Cherry Wood";
            break;
        case kThirdOakWoodTheme:
            cell.textLabel.text = @"Pimlico Oak Wood";
            break;
        case kFourthDarkTheme:
            cell.textLabel.text = @"Hendon Dark Theme";
            break;
        case kFourthGreyTheme:
            cell.textLabel.text = @"Hendon Grey Theme";
            break;
        case kFourthLightTheme:
            cell.textLabel.text = @"Hendon Light Theme";
            break;
        case kFifthBlueTheme:
            cell.textLabel.text = @"Camden Blue Theme";
            break;
        case kFifthGreenTheme:
            cell.textLabel.text = @"Camden Green Theme";
            break;
        case kFifthMagentaTheme:
            cell.textLabel.text = @"Camden Magenta Theme";
            break;
        case kFifthOrangeTheme:
            cell.textLabel.text = @"Camden Orange Theme";
            break;
        case kFifthRedTheme:
            cell.textLabel.text = @"Camden Red Theme";
            break;
        case kSixthDarkTheme:
            cell.textLabel.text = @"Holborn Dark Theme";
            break;
        case kSixthGreenTheme:
            cell.textLabel.text = @"Holborn Green Theme";
            break;
        case kSeventhForrestTheme:
            cell.textLabel.text = @"Kensington Forrest Theme";
            break;
        case kSeventhNavyTheme:
            cell.textLabel.text = @"Kensington Navy Theme";
            break;
        case kSeventhPurpleTheme:
            cell.textLabel.text = @"Kensington Purple Theme";
            break;
        case kEighthBlueTheme:
            cell.textLabel.text = @"Belsize Blue Theme";
            break;
        case kEighthGreenTheme:
            cell.textLabel.text = @"Belsize Green Theme";
            break;
        case kEighthRedTheme:
            cell.textLabel.text = @"Belsize Red Theme";
            break;
        case kNinth1Theme:
            cell.textLabel.text = @"Richmond 1 Theme";
            break;
        case kNinth2Theme:
            cell.textLabel.text = @"Richmond 2 Theme";
            break;
        case kNinth3Theme:
            cell.textLabel.text = @"Richmond 3 Theme";
            break;
        case kNinth4Theme:
            cell.textLabel.text = @"Richmond 4 Theme";
            break;
        case kNinth5Theme:
            cell.textLabel.text = @"Richmond 5 Theme";
            break;
        case kNinth6Theme:
            cell.textLabel.text = @"Richmond 6 Theme";
            break;
        case kNinth7Theme:
            cell.textLabel.text = @"Richmond 7 Theme";
            break;
        case kNinth8Theme:
            cell.textLabel.text = @"Richmond 8 Theme";
            break;
        case kTenthDarkTheme:
            cell.textLabel.text = @"Sloane Dark Theme";
            break;
        case kTenthLightTheme:
            cell.textLabel.text = @"Sloane Light Theme";
            break;
        case kTenthMediumTheme:
            cell.textLabel.text = @"Sloane Medium Theme";
            break;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case kFirstDarkTheme:
            [ThemeManager applyFirstDarkNavigationAppearance];
            break;
        case kFirstGrayTheme:
            [ThemeManager applyFirstGreyNavigationAppearance];
            break;
        case kFirstLightTheme:
            [ThemeManager applyFirstLightNavigationAppearance];
            break;
        case kSecondBlueTheme:
            [ThemeManager applySecondBlueNavigationAppearance];
            break;
        case kSecondGreenTheme:
            [ThemeManager applySecondGreenNavigationAppearance];
            break;
        case kSecondOrangeTheme:
            [ThemeManager applySecondOrangeNavigationAppearance];
            break;
        case kSecondRedTheme:
            [ThemeManager applySecondRedNavigationAppearance];
            break;
        case kThirdBirchWoodTheme:
            [ThemeManager applyThirdBirchWoodNavigationAppearance];
            break;
        case kThirdCherryWoodTheme:
            [ThemeManager applyThirdCherryWoodNavigationAppearance];
            break;
        case kThirdOakWoodTheme:
            [ThemeManager applyThirdOakWoodNavigationAppearance];
            break;
        case kFourthDarkTheme:
            [ThemeManager applyFourthDarkNavigationAppearance];
            break;
        case kFourthGreyTheme:
            [ThemeManager applyFourthGreyNavigationAppearance];
            break;
        case kFourthLightTheme:
            [ThemeManager applyFourthLightNavigationAppearance];
            break;
        case kFifthBlueTheme:
            [ThemeManager applyFifthBlueNavigationAppearance];
            break;
        case kFifthGreenTheme:
            [ThemeManager applyFifthGreenNavigationAppearance];
            break;
        case kFifthMagentaTheme:
            [ThemeManager applyFifthMagentaNavigationAppearance];
            break;
        case kFifthOrangeTheme:
            [ThemeManager applyFifthOrangeNavigationAppearance];
            break;
        case kFifthRedTheme:
            [ThemeManager applyFifthRedNavigationAppearance];
            break;
        case kSixthDarkTheme:
            [ThemeManager applySixthDarkNavigationAppearance];
            break;
        case kSixthGreenTheme:
            [ThemeManager applySixthGreenNavigationAppearance];
            break;
        case kSeventhForrestTheme:
            [ThemeManager applySeventhForrestNavigationAppearance];
            break;
        case kSeventhNavyTheme:
            [ThemeManager applySeventhNavyNavigationAppearance];
            break;
        case kSeventhPurpleTheme:
            [ThemeManager applySeventhPurpleNavigationAppearance];
            break;
        case kEighthBlueTheme:
            [ThemeManager applyEighthBlueNavigationAppearance];
            break;
        case kEighthGreenTheme:
            [ThemeManager applyEighthGreenNavigationAppearance];
            break;
        case kEighthRedTheme:
            [ThemeManager applyEighthRedNavigationAppearance];
            break;
        case kNinth1Theme:
            [ThemeManager applyNinth1NavigationAppearance];
            break;
        case kNinth2Theme:
            [ThemeManager applyNinth2NavigationAppearance];
            break;
        case kNinth3Theme:
            [ThemeManager applyNinth3NavigationAppearance];
            break;
        case kNinth4Theme:
            [ThemeManager applyNinth4NavigationAppearance];
            break;
        case kNinth5Theme:
            [ThemeManager applyNinth5NavigationAppearance];
            break;
        case kNinth6Theme:
            [ThemeManager applyNinth6NavigationAppearance];
            break;
        case kNinth7Theme:
            [ThemeManager applyNinth7NavigationAppearance];
            break;
        case kNinth8Theme:
            [ThemeManager applyNinth8NavigationAppearance];
            break;
        case kTenthDarkTheme:
            [ThemeManager applyTenthDarkNavigationAppearance];
            break;
        case kTenthLightTheme:
            [ThemeManager applyTenthLightNavigationAppearance];
            break;
        case kTenthMediumTheme:
            [ThemeManager applyTenthMediumNavigationAppearance];
            break;
    }
    
    DisplayViewController *displayViewController = [[DisplayViewController alloc] initWithTheme:indexPath.row];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:displayViewController];
    
    ((AppDelegate *)[[UIApplication sharedApplication] delegate]).pushedSecondController = NO;
    [self presentModalViewController:navController animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 37;
}

@end
