//
//  AMKNavigationController.m
//  AMKLaunchTimeProfiler_Example
//
//  Created by mengxinxin on 2022/5/11.
//  Copyright © 2022 mengxinxin. All rights reserved.
//

#import "AMKNavigationController.h"

@interface AMKNavigationController ()

@end

@implementation AMKNavigationController

#pragma mark - Dealloc

- (void)dealloc {
    
}

#pragma mark - Init Methods

#pragma mark - Life Circle

- (void)viewDidLoad {
    [super viewDidLoad];
    if (@available(iOS 15.0, *)) {
        UINavigationBarAppearance *appperance = [UINavigationBarAppearance.alloc init];
        appperance.backgroundColor = [UIColor colorWithRed:243/255.0 green:243/255.0 blue:243/255.0 alpha:1.0];
        [appperance setTitleTextAttributes:@{NSForegroundColorAttributeName:UIColor.darkTextColor}];
        self.navigationBar.standardAppearance = appperance;
        self.navigationBar.scrollEdgeAppearance = appperance;
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
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
