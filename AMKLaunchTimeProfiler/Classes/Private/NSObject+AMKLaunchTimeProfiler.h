//
//  NSObject+AMKLaunchTimeProfiler.h
//  AMKLaunchTimeProfiler
//
//  Created by mengxinxin on 2022/5/5.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (AMKLaunchTimeProfiler)

+ (void)amkltp_swizzleInstanceMethod:(SEL)originalSelector with:(SEL)swizzledSelector;

@end
