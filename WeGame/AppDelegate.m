//
//  AppDelegate.m
//  WeGame
//
//  Created by apple on 14/12/16.
//  Copyright (c) 2014年 tencent. All rights reserved.
//

#import "AppDelegate.h"

#import "MainViewController.h"
//#import <Bugly/CrashReporter.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    [[CrashReporter sharedInstance] installWithAppkey:@"900001402"];
//    //设置渠道标识
//    [[CrashReporter sharedInstance] setChannel:@"Enterprise"];
//    //设置userid，用于标识用户
//    [[CrashReporter sharedInstance] setUserId:@"900001402"];
    
    // Override point for customization after application launch.
//    [NSThread sleepForTimeInterval:4];
    UINavigationController *rootViewController = [[UINavigationController alloc] init];
    [rootViewController setNavigationBarHidden:YES];
    MainViewController *mainVC = [[MainViewController alloc] init];
    
   [rootViewController pushViewController:mainVC animated:YES];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setRootViewController:rootViewController];
    [self.window makeKeyAndVisible];
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
