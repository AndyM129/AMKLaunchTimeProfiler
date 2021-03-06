//
//  AMKViewController.m
//  AMKLaunchTimeProfiler
//
//  Created by mengxinxin on 06/22/2022.
//  Copyright (c) 2022 mengxinxin. All rights reserved.
//

#import "AMKViewController.h"
#import <AMKLaunchTimeProfiler/AMKLaunchTimeProfiler.h>

@interface AMKViewController ()

@end

@implementation AMKViewController

#pragma mark - Dealloc

- (void)dealloc {
    
}

#pragma mark - Init Methods

- (instancetype)init {
    if (self = [super init]) {
        self.title = @"Other";
        self.tabBarItem.title = self.title;
    }
    return self;
}

#pragma mark - Life Circle

- (void)viewDidLoad {
    [super viewDidLoad];
    AMKLaunchTimeProfilerOnceLogBegin(@"");
    self.title = @"Other";
    self.view.backgroundColor = self.view.backgroundColor?:[UIColor whiteColor];
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
