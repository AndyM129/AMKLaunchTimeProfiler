//
//  AMKRootViewController.m
//  AMKLaunchTimeProfiler_Example
//
//  Created by mengxinxin on 2022/5/11.
//  Copyright © 2022 mengxinxin. All rights reserved.
//

#import "AMKRootViewController.h"
#import "AMKNavigationController.h"
#import "AMKHomeViewController.h"
#import "AMKViewController.h"
#import <AMKLaunchTimeProfiler/AMKLaunchTimeProfiler.h>

// 注：为了考虑封装性，-firstScreenTime 被声明为了只读属性，可以通过「手动声明」来解决赋值
@interface AMKLaunchTimeProfiler (issues_1)
@property(nonatomic, assign, readwrite) NSTimeInterval firstScreenTime;
@end

@interface AMKRootViewController ()

@end

// 找到 UIApplication.sharedApplication.delegate.window.rootViewController 对应的类
@implementation AMKRootViewController

#pragma mark - Dealloc

- (void)dealloc {
    
}

#pragma mark - Init Methods

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.title = NSStringFromClass(self.class);
    }
    return self;
}

#pragma mark - Life Circle

- (void)viewDidLoad {
    [super viewDidLoad];
    AMKLaunchTimeProfilerOnceLogBegin(@"");
    self.viewControllers = @[
        [AMKNavigationController.alloc initWithRootViewController:AMKHomeViewController.new],
        [AMKNavigationController.alloc initWithRootViewController:AMKViewController.new],
    ];
    AMKLaunchTimeProfilerOnceLogEnd(@"");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    AMKLaunchTimeProfilerOnceLogBegin(@"");
    AMKLaunchTimeProfilerOnceLogEnd(@"");
    
    // 新增代码：手动赋值 firstScreenTime
    AMKLaunchTimeProfiler.sharedInstance.firstScreenTime = CFAbsoluteTimeGetCurrent() + kCFAbsoluteTimeIntervalSince1970;
    AMKLaunchTimeProfilerInternalLog(@"first screen time: %@", [@(AMKLaunchTimeProfiler.sharedInstance.firstScreenTime) performSelector:@selector(amkltp_formattedDateStringForSystemTimeZone)]);
    [NSNotificationCenter.defaultCenter postNotificationName:AMKLaunchTimeProfilerFirstScreenDidDisplayNotification object:AMKLaunchTimeProfiler.sharedInstance];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

#pragma mark - Getters & Setters

#pragma mark - Data & Networking

#pragma mark - Layout Subviews

#pragma mark - Public Methods

#pragma mark - Private Methods

#pragma mark - Notifications

#pragma mark - KVO

#pragma mark - Protocol

#pragma mark - Overrides

#pragma mark - Helper Methods

@end
