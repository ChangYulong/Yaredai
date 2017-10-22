//
//  NSString+Extend.h
//  PHClient
//
//  Created by Langmuir on 2017/8/15.
//  Copyright © 2017年 zsyw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extend)

/**
 *  判断字符串是否为整形
 *
 *  @param string 字符串
 *
 *  @return 布尔值
 */
+ (BOOL)isPureInt:(NSString *)string;

@end
