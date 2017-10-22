//
//  UIControl+Blocks.h
//  ph
//
//  Created by 常玉龙 on 2017/7/31.
//  Copyright © 2017年 cat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

typedef void (^ActionBlock) (id sender);

@interface UIControl (Blocks)

- (void)addEventHandler:(ActionBlock)handler forControlEvents:(UIControlEvents)controlEvents;

@end
