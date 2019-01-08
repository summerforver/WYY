//
//  AppDelegate.m
//  text1
//
//  Created by 王一卓 on 2018/9/16.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "AppDelegate.h"
#import "firstViewController.h"
#import "secondViewController.h"
#import "thirdViewController.h"
#import "fouthViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UITabBarController *tabBar = [[UITabBarController alloc] init];
    firstViewController *first = [[firstViewController alloc] init];
    UINavigationController *navigationController1 = [[UINavigationController alloc] initWithRootViewController:first];
    navigationController1.tabBarItem.title = @"洗护";
    
    
    secondViewController *second = [[secondViewController alloc] init];
    UINavigationController *navigationController2 = [[UINavigationController alloc] initWithRootViewController:second];
    navigationController2.tabBarItem.title = @"小管家";
    
    thirdViewController *third = [[thirdViewController alloc] init];
    UINavigationController *navigationController3 = [[UINavigationController alloc] initWithRootViewController:third];
    navigationController3.tabBarItem.title = @"Hi校园";
    
    
    fouthViewController *fouth = [[fouthViewController alloc] init];
    UINavigationController *navigationController4 = [[UINavigationController alloc] initWithRootViewController:fouth];
    navigationController4.tabBarItem.title = @"我的";
    
    
    tabBar.viewControllers = @[navigationController1, navigationController2, navigationController3, navigationController4];
    
    
    self.window.rootViewController = tabBar;
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
