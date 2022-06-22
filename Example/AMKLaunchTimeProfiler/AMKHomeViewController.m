//
//  AMKHomeViewController.m
//  AMKLaunchTimeProfiler_Example
//
//  Created by mengxinxin on 2022/5/11.
//  Copyright © 2022 mengxinxin. All rights reserved.
//

#import "AMKHomeViewController.h"

@interface AMKHomeViewController ()

@end

@implementation AMKHomeViewController

#pragma mark - Dealloc

- (void)dealloc {
    
}

#pragma mark - Init Methods

- (instancetype)init {
    if (self = [super init]) {
        self.title = @"AMKLaunchTimeProfiler";
        self.tabBarItem.title = @"Home";
    }
    return self;
}

#pragma mark - Life Circle

- (void)viewDidLoad {
    [super viewDidLoad];
    AMKLaunchTimeProfilerOnceLogBegin(@"");
    self.view.backgroundColor = self.view.backgroundColor?:[UIColor whiteColor];
    self.navigationItem.rightBarButtonItem =
    [UIBarButtonItem.alloc initWithTitle:@"日志" style:UIBarButtonItemStylePlain target:self action:@selector(logsBarButtonItemClicked:)];
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

- (void)logsBarButtonItemClicked:(id)sender {
    [AMKLaunchTimeProfilerLogsViewController.new presentingWithAnimated:YES completion:nil];
}

#pragma mark - Notifications

#pragma mark - KVO

#pragma mark - Protocol

#pragma mark - Overrides

#pragma mark - Helper Methods


@end
