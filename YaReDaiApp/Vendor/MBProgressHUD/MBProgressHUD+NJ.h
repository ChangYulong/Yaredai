//
//  MBProgressHUD+NJ.h
//  NJWisdomCard
//
//  Created by apple on 15/8/25.
//  Copyright (c) 2015年 Weconex. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (NJ)

+ (void)showSuccess:(NSString *)success;
+ (void)showSuccess:(NSString *)success toView:(UIView *)view;

+ (void)showError:(NSString *)error;
+ (void)showError:(NSString *)error toView:(UIView *)view;
+ (void)showErrorLabel:(NSString *)error;
+ (MBProgressHUD *)showMessage:(NSString *)message;
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;

/**
 by lowBrew

 @param view
 @return
 */
+ (MBProgressHUD *)showProgressToView:(UIView *)view;
+ (void)lwHideHUDFromView:(UIView *)view;

+ (void)hideHUD;
+ (void)hideHUDFromView:(UIView *)view;
+ (void)hideHUDForView:(UIView *)view;

@end