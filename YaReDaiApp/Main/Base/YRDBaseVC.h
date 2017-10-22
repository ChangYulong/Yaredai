//
//  YRDBaseVC.h
//  YaReDaiApp
//
//  Created by Langmuir on 2017/10/21.
//  Copyright © 2017年 Langmuir. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YRDBaseVCProtocol.h"

@interface YRDBaseVC : UIViewController<YRDBaseVCProtocol>

@property (nonatomic, strong) UIView * customNavView;
@property (nonatomic, strong) UILabel * customNavTitleLabel;
@property (nonatomic, strong) NSString * cTitle;
@property (nonatomic, strong) UIButton * leftButton;
@property (nonatomic, strong) UIButton * rightButton;

- (void)leftBtnAction;
- (void)rightBtnAction;

@end
