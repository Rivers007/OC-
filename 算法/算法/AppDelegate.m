//
//  AppDelegate.m
//  算法
//
//  Created by River on 2019/11/9.
//  Copyright © 2019 River. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window=[[UIWindow alloc] init];
    self.window.rootViewController=[[ViewController alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}





@end
