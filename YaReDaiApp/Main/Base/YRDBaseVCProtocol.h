//
//  YRDBaseVCProtocol.h
//  YaReDaiApp
//
//  Created by Langmuir on 2017/10/21.
//  Copyright © 2017年 Langmuir. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol YRDBaseVCProtocol <NSObject>

- (void)yrd_addSubViews;
- (void)yrd_setNavigation;

@optional

- (void)getNewData;

@end
