//
//  UIDevice+AMKLaunchTimeProfiler.m
//  AMKLaunchTimeProfiler
//
//  Created by mengxinxin on 2022/3/23.
//

#import "UIDevice+AMKLaunchTimeProfiler.h"
#include <sys/sysctl.h>

@implementation UIDevice (AMKLaunchTimeProfiler)

+ (NSString *)amkltp_platform {
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *platform = [NSString stringWithUTF8String:machine];
    free(machine);
    
    return platform;
}

+ (NSDictionary *)amkltp_platformDefinitions {
    NSDictionary *definitions = @{
#if !defined(TARGET_OS_IOS) || TARGET_OS_IOS
        @"iPhone1,1": @"iPhone 1G",
        @"iPhone1,2": @"iPhone 3G",
        @"iPhone2,1": @"iPhone 3GS",
        @"iPhone3,1": @"iPhone 4 (GSM)",
        @"iPhone3,2": @"iPhone 4 (GSM Rev A)",
        @"iPhone3,3": @"iPhone 4 (CDMA)",
        @"iPhone4,1": @"iPhone 4S",
        @"iPhone5,1": @"iPhone 5 (GSM)",
        @"iPhone5,2": @"iPhone 5 (GSM+CDMA)",
        @"iPhone5,3": @"iPhone 5C (GSM)",
        @"iPhone5,4": @"iPhone 5C (GSM+CDMA)",
        @"iPhone6,1": @"iPhone 5S (GSM)",
        @"iPhone6,2": @"iPhone 5S (GSM+CDMA)",
        @"iPhone7,1": @"iPhone 6 Plus",
        @"iPhone7,2": @"iPhone 6",
        @"iPhone8,1": @"iPhone 6s",
        @"iPhone8,2": @"iPhone 6s Plus",
        @"iPhone8,4": @"iPhone SE 1st-gen",
        @"iPhone9,4": @"iPhone 7 Plus",
        @"iPhone9,2": @"iPhone 7 Plus",
        @"iPhone9,3": @"iPhone 7",
        @"iPhone9,1": @"iPhone 7",
        @"iPhone10,1" : @"iPhone 8",
        @"iPhone10,4" : @"iPhone 8",
        @"iPhone10,2" : @"iPhone 8 Plus",
        @"iPhone10,5" : @"iPhone 8 Plus",
        @"iPhone10,3" : @"iPhone X",
        @"iPhone10,6" : @"iPhone X",
        @"iPhone11,2" : @"iPhone XS",
        @"iPhone11,4" : @"iPhone XS Max",
        @"iPhone11,6" : @"iPhone XS Max",
        @"iPhone11,8" : @"iPhone XR",
        @"iPhone12,1" : @"iPhone 11",
        @"iPhone12,3" : @"iPhone 11 Pro",
        @"iPhone12,5" : @"iPhone 11 Pro Max",
        @"iPhone12,8" : @"iPhone SE 2nd-gen",
        @"iPhone13,1" : @"iPhone 12 mini",
        @"iPhone13,2" : @"iPhone 12",
        @"iPhone13,3" : @"iPhone 12 Pro",
        @"iPhone13,4" : @"iPhone 12 Pro Max",
        @"iPhone14,2" : @"iPhone 13 Pro",
        @"iPhone14,3" : @"iPhone 13 Pro Max",
        @"iPhone14,4" : @"iPhone 13 mini",
        @"iPhone14,5" : @"iPhone 13",
        @"iPod1,1": @"iPod Touch 1G",
        @"iPod2,1": @"iPod Touch 2G",
        @"iPod3,1": @"iPod Touch 3G",
        @"iPod4,1": @"iPod Touch 4G",
        @"iPod5,1": @"iPod Touch 5G",
        @"iPod7,1": @"iPod Touch 6G",
        @"iPod9,1": @"iPod Touch 7G",
        @"iPad1,1": @"iPad 1",
        @"iPad2,1": @"iPad 2 (WiFi)",
        @"iPad2,2": @"iPad 2 (GSM)",
        @"iPad2,3": @"iPad 2 (CDMA)",
        @"iPad2,4": @"iPad 2",
        @"iPad2,5": @"iPad Mini (WiFi)",
        @"iPad2,6": @"iPad Mini (GSM)",
        @"iPad2,7": @"iPad Mini (GSM+CDMA)",
        @"iPad3,1": @"iPad 3 (WiFi)",
        @"iPad3,2": @"iPad 3 (GSM+CDMA)",
        @"iPad3,3": @"iPad 3 (GSM)",
        @"iPad3,4": @"iPad 4 (WiFi)",
        @"iPad3,5": @"iPad 4 (GSM)",
        @"iPad3,6": @"iPad 4 (GSM+CDMA)",
        @"iPad4,1": @"iPad Air (WiFi)",
        @"iPad4,2": @"iPad Air (WiFi/Cellular)",
        @"iPad4,3": @"iPad Air (China)",
        @"iPad4,4": @"iPad Mini Retina (WiFi)",
        @"iPad4,5": @"iPad Mini Retina (WiFi/Cellular)",
        @"iPad4,6": @"iPad Mini Retina (China)",
        @"iPad4,7": @"iPad Mini 3 (WiFi)",
        @"iPad4,8": @"iPad Mini 3 (WiFi/Cellular)",
        @"iPad4,9": @"iPad Mini 3 (China)",
        @"iPad5,1": @"iPad Mini 4 (WiFi)",
        @"iPad5,2": @"iPad Mini 4 (WiFi/Cellular)",
        @"iPad5,3": @"iPad Air 2 (WiFi)",
        @"iPad5,4": @"iPad Air 2 (WiFi/Cellular)",
        @"iPad6,3": @"iPad Pro 9.7-inch (WiFi)",
        @"iPad6,4": @"iPad Pro 9.7-inch (WiFi/Cellular)",
        @"iPad6,7": @"iPad Pro 12.9-inch (WiFi)",
        @"iPad6,8": @"iPad Pro 12.9-inch (WiFi/Cellular)",
        @"iPad6,11": @"iPad 5th-gen (WiFi)",
        @"iPad6,12": @"iPad 5th-gen (WiFi/Cellular)",
        @"iPad7,1": @"iPad Pro 12.9-inch 2nd-gen (WiFi)",
        @"iPad7,2": @"iPad Pro 12.9-inch 2nd-gen (WiFi/Cellular)",
        @"iPad7,3": @"iPad Pro 10.5-inch (WiFi)",
        @"iPad7,4": @"iPad Pro 10.5-inch (WiFi/Cellular)",
        @"iPad7,5": @"iPad 6th-gen (WiFi)",
        @"iPad7,6": @"iPad 6th-gen (WiFi/Cellular)",
        @"iPad7,11": @"iPad 7th-gen (WiFi)",
        @"iPad7,12": @"iPad 7th-gen (WiFi/Cellular)",
        @"iPad8,1": @"iPad Pro 11-inch 1st-gen (WiFi)",
        @"iPad8,2": @"iPad Pro 11-inch 1st-gen (WiFi)",
        @"iPad8,3": @"iPad Pro 11-inch 1st-gen (WiFi/Cellular)",
        @"iPad8,4": @"iPad Pro 11-inch 1st-gen (WiFi/Cellular)",
        @"iPad8,5": @"iPad Pro 12.9-inch 3rd-gen (WiFi)",
        @"iPad8,6": @"iPad Pro 12.9-inch 3rd-gen (WiFi)",
        @"iPad8,7": @"iPad Pro 12.9-inch 3rd-gen (WiFi/Cellular)",
        @"iPad8,8": @"iPad Pro 12.9-inch 3rd-gen (WiFi/Cellular)",
        @"iPad8,9": @"iPad Pro 11-inch 2nd-gen (WiFi)",
        @"iPad8,10": @"iPad Pro 11-inch 2nd-gen (WiFi/Cellular)",
        @"iPad8,11": @"iPad Pro 12.9-inch 4th-gen (WiFi)",
        @"iPad8,12": @"iPad Pro 12.9-inch 4th-gen (WiFi/Cellular)",
        @"iPad11,1": @"iPad Mini 5th-gen (WiFi)",
        @"iPad11,2": @"iPad Mini 5th-gen (WiFi/Cellular)",
        @"iPad11,3": @"iPad Air 3rd-gen (WiFi)",
        @"iPad11,4": @"iPad Air 3rd-gen (WiFi/Cellular)",
        @"iPad11,6": @"iPad 8th-gen (WiFi)",
        @"iPad11,7": @"iPad 8th-gen (WiFi/Cellular)",
        @"iPad12,1": @"iPad 9th-gen (Wifi)",
        @"iPad12,2": @"iPad 9th-gen (Wifi/Cellular)",
        @"iPad13,1": @"iPad Air 4th-gen (WiFi)",
        @"iPad13,2": @"iPad Air 4th-gen (WiFi/Cellular)",
        @"iPad13,4": @"iPad Pro 11-inch 3rd-gen (WiFi)",
        @"iPad13,5": @"iPad Pro 11-inch 3rd-gen (WiFi)",
        @"iPad13,6": @"iPad Pro 11-inch 3rd-gen (WiFi/Cellular)",
        @"iPad13,7": @"iPad Pro 11-inch 3rd-gen (WiFi/Cellular)",
        @"iPad13,8": @"iPad Pro 12.9-inch 5th-gen (WiFi)",
        @"iPad13,9": @"iPad Pro 12.9-inch 5th-gen (WiFi)",
        @"iPad13,10": @"iPad Pro 12.9-inch 5th-gen (WiFi/Cellular)",
        @"iPad13,11": @"iPad Pro 12.9-inch 5th-gen (WiFi/Cellular)",
        @"iPad14,1": @"iPad mini 6th-gen (WiFi)",
        @"iPad14,2": @"iPad mini 6th-gen (WiFi/Cellular)",
#endif
#if TARGET_OS_TV
        @"AppleTV5,3": @"Apple TV 4G",
        @"AppleTV6,2": @"Apple TV 4K",
#endif
#if !defined(TARGET_OS_SIMULATOR) || TARGET_OS_SIMULATOR
        @"i386": @"Simulator",
        @"x86_64": @"Simulator",
#endif
    };
    return definitions;
}

+ (NSString *)amkltp_platformString {
    return [self amkltp_platformStringForType: [self amkltp_platform]];
}

+ (NSString *)amkltp_platformStringSimple {
    NSString *platformString = [self amkltp_platformString];
    
    NSRange range = [platformString rangeOfString:@"("];
    if (range.length) return [platformString substringToIndex:range.location - 1];
    
    return platformString;
}

+ (NSString *)amkltp_platformStringForType:(NSString *)type {
    NSDictionary *platformStrings = [self amkltp_platformDefinitions];
    return platformStrings[type] ?: type;
}

@end
