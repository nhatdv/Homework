//
//  AppDelegate.m
//  Day08
//
//  Created by MAC on 10/22/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "AppDelegate.h"
#import "ModalVC1.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    ModalVC1 *viewController = [[ModalVC1 alloc] initWithNibName:@"ModalVC1" bundle:nil];
    
    self.window.rootViewController = viewController;
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    }

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    
}

@end
