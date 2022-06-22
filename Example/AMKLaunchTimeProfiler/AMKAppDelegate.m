//
//  AMKAppDelegate.m
//  AMKLaunchTimeProfiler
//
//  Created by mengxinxin on 06/22/2022.
//  Copyright (c) 2022 mengxinxin. All rights reserved.
//

#import "AMKAppDelegate.h"
#import "AMKRootViewController.h"
#import <FLEX/FLEX.h>

@implementation AMKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    AMKLaunchTimeProfiler.debugEnable = YES;
    AMKLaunchTimeProfiler.mailRecipients = @[@"example@email.com"];
    AMKLaunchTimeProfilerOnceLogBegin(@"");
    
    self.window = [UIWindow.alloc initWithFrame:UIScreen.mainScreen.bounds];
    self.window.rootViewController = [AMKRootViewController.alloc init];
    [self.window makeKeyAndVisible];
    
    // Log 测试
    [AMKLaunchTimeProfiler.sharedInstance logWithFunction:__FUNCTION__ line:__LINE__ string:@"hello"];
    AMKLaunchTimeProfilerLog(@"world");
    
    // 监听通知
    [NSNotificationCenter.defaultCenter addObserverForName:AMKLaunchTimeProfilerApplicationDidFinishLaunchingNotification object:nil queue:NSOperationQueue.mainQueue usingBlock:^(NSNotification * _Nonnull note) {
        NSLog(@"AMKLaunchTimeProfilerApplicationDidFinishLaunchingNotification");
    }];
    [NSNotificationCenter.defaultCenter addObserverForName:AMKLaunchTimeProfilerFirstScreenDidDisplayNotification object:nil queue:NSOperationQueue.mainQueue usingBlock:^(NSNotification * _Nonnull note) {
        NSLog(@"AMKLaunchTimeProfilerFirstScreenDidDisplayNotification");
        
        // 此时已完成首屏的显示，可以参考如下代码，实现相关数据的上报
        //
        // [BaiduMobStat.defaultStat logEventWithDurationTime:@"TotalTimeConsuming" durationTime:BDESharedLaunchTimeProfiler.totalTimeConsuming*1000 attributes:@{@"TimeConsuming": @(BDESharedLaunchTimeProfiler.totalTimeConsuming*1000).stringValue}];
        // [BaiduMobStat.defaultStat logEventWithDurationTime:@"PreMainTimeConsuming" durationTime:BDESharedLaunchTimeProfiler.preMainTimeConsuming*1000 attributes:@{@"TimeConsuming": @(BDESharedLaunchTimeProfiler.preMainTimeConsuming*1000).stringValue}];
        // [BaiduMobStat.defaultStat logEventWithDurationTime:@"MainTimeConsuming" durationTime:BDESharedLaunchTimeProfiler.mainTimeConsuming*1000 attributes:@{@"TimeConsuming": @(BDESharedLaunchTimeProfiler.mainTimeConsuming*1000).stringValue}];
        // [BaiduMobStat.defaultStat logEventWithDurationTime:@"FirstScreenTimeConsuming" durationTime:BDESharedLaunchTimeProfiler.firstScreenTimeConsuming*1000 attributes:@{@"TimeConsuming": @(BDESharedLaunchTimeProfiler.firstScreenTimeConsuming*1000).stringValue}];
    }];
    
    AMKLaunchTimeProfilerOnceLogEnd(@"");
    return YES;
}

@end
