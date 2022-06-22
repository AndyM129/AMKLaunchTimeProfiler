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

@interface AMKRootViewController ()

@end

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
