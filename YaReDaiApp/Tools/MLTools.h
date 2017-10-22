//
//  MLTools.h
//  ph
//
//  Created by 常玉龙 on 2017/6/26.
//  Copyright © 2017年 cat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MLTools : NSObject

+ (void)showAlertControllerWithTitle:(NSString *)title withMessage:(NSString *)message confirm:(void (^)(void))confirmBlock;
+ (void)showAlertControllerWithTitle:(NSString *)title withMessage:(NSString *)message confirm:(void (^)(void))confirmBlock cancel:(void (^)(void))cancelBlock;

+ (UIViewController *)getCurrentVC;

+ (BOOL)valiMobile:(NSString *)mobileNum;

///文字加图片富文本
+ (NSMutableAttributedString *)getAttributeWithImageName:(NSString *)imageName content:(NSString *)content;
+ (NSMutableAttributedString *)getAttributeWithImageName2:(NSString *)imageName content:(NSString *)content;

+ (NSMutableAttributedString *)getAttributeRightWithImageName:(NSString *)imageName content:(NSString *)content;

+ (CGSize)sizeWithText:(NSString *)text withSize:(CGSize)size withFont:(UIFont *)font;

//时间戳转换成时间
+ (NSString *)timeWithTimeIntervalString:(NSString *)timeString;
+ (NSString *)timeWithTimeIntervalString2:(NSString *)timeString;

//字典转json格式字符串
+ (NSString *)dictionaryToJson:(NSDictionary *)dic;
//json格式字符串转字典
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;

+ (UIImage *)GetImageWithColor:(UIColor *)color andHeight:(CGFloat)height;

@end
