//
//  UIControl+Blocks.m
//  ph
//
//  Created by 常玉龙 on 2017/7/31.
//  Copyright © 2017年 cat. All rights reserved.
//

#import "UIControl+Blocks.h"

static char UIButtonHandlerKey;

@implementation UIControl (Blocks)

- (void)addEventHandler:(ActionBlock)handler forControlEvents:(UIControlEvents)controlEvents {
    objc_setAssociatedObject(self, &UIButtonHandlerKey, handler, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(callActionHandler:) forControlEvents:controlEvents];
}

- (void)callActionHandler:(id)sender {
    ActionBlock handler = (ActionBlock)objc_getAssociatedObject(self, &UIButtonHandlerKey);
    if (handler) {
        handler(sender);
    }
}

@end
