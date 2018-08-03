//
//  AppDelegate.m
//  WYY_账号
//
//  Created by 王一卓 on 2018/7/22.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "AppDelegate.h"
#import "WYYRoot.h"
#import "WYYRootMy.h"
#import "WYYSearchViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];


    UITabBarController *tabBarController = [[UITabBarController alloc]init];

    self.window.rootViewController = tabBarController;

    //设置点击颜色  范围在 0 - 1 alpha：透明度
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:300/255 green:89/255 blue:86/255 alpha:0.6]];
    
    //设置背景颜色
    [[UITabBar appearance] setBackgroundColor:[UIColor whiteColor]];
    
    WYYSearchViewController *viewCon01 = [[WYYSearchViewController alloc] init];
    viewCon01.tabBarItem.title = @"发现";
    viewCon01.tabBarItem.image = [UIImage imageNamed:@"发现"];
    viewCon01.tabBarItem.badgeValue = @"999";

    UIViewController *viewCon02 = [[UIViewController alloc] init];
    viewCon02.tabBarItem.title = @"视频";
    viewCon02.tabBarItem.image = [UIImage imageNamed:@"视频"];

    WYYRootMy *viewCon03 = [[WYYRootMy alloc] init];
    viewCon03.tabBarItem.title = @"我的";
    viewCon03.tabBarItem.image = [UIImage imageNamed:@"我的"];

    UIViewController *viewCon04 = [[UIViewController alloc] init];
    viewCon04.tabBarItem.title = @"朋友";
    viewCon04.tabBarItem.image = [UIImage imageNamed:@"朋友"];

    WYYRoot *viewCon05 = [[WYYRoot alloc] init];
    viewCon05.tabBarItem.title = @"账户";
    viewCon05.tabBarItem.image = [UIImage imageNamed:@"账户"];



    UINavigationController *navigationCon01 = [[UINavigationController alloc] initWithRootViewController:viewCon01];

    UINavigationController *navigationCon02 = [[UINavigationController alloc] initWithRootViewController:viewCon02];

    UINavigationController *navigationCon03 = [[UINavigationController alloc] initWithRootViewController:viewCon03];

    UINavigationController *navigationCon04 = [[UINavigationController alloc] initWithRootViewController:viewCon04];

    UINavigationController *navigationCon05 = [[UINavigationController alloc] initWithRootViewController:viewCon05];


    tabBarController.viewControllers = @[navigationCon01,navigationCon02,navigationCon03,navigationCon04,navigationCon05];


    [self.window makeKeyAndVisible];
    
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
