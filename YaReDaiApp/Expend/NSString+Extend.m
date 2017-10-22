//
//  NSString+Extend.m
//  PHClient
//
//  Created by Langmuir on 2017/8/15.
//  Copyright © 2017年 zsyw. All rights reserved.
//

#import "NSString+Extend.h"

@implementation NSString (Extend)

+ (BOOL)isPureInt:(NSString *)string{
    NSScanner * scan = [NSScanner scannerWithString:string];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}

@end
