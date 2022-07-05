//
//  AppDelegate.m
//  DemoOC
//
//  Created by Gao on 2022/7/4.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewController *rootVC = [[ViewController alloc] init];
    UINavigationController *rootNC = [[UINavigationController alloc] initWithRootViewController:rootVC];
    [self.window.subviews enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj removeFromSuperview];
    }];
    [self.window setRootViewController:rootNC];
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
