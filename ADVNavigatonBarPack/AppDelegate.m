//
//  AppDelegate.m
//  ADVNavigatonBarPack
//
//  Created by Tope Abayomi on 04.03.13.
//  Copyright (c) 2013 Tope Abayomi. All rights reserved.
//

#import "AppDelegate.h"
#import "SelectViewController.h"
#import "SCPageViewController.h"
#import "ThemeManager.h"
@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"3-oak-wood-menu-bar.png"]];
    imageView.frame = CGRectMake(0, 20, imageView.frame.size.width, imageView.frame.size.height);
    [self.window addSubview:imageView];
    SCPageViewController *viewController = [[SCPageViewController alloc] initWithTheme:kThirdOakWoodTheme];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:viewController];
    [self.window setRootViewController:navController];
    [ThemeManager applyThirdOakWoodNavigationAppearance];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
