//
//  UIImage+Extend.h
//  ph
//
//  Created by 常玉龙 on 2017/6/27.
//  Copyright © 2017年 cat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extend)

- (UIImage *)imageWithColor:(UIColor *)color;

- (UIImage *)imageByScalingToSize:(CGSize)targetSize; 

@end
