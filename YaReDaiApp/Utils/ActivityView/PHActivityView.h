//
//  PHActivityView.h
//  PHClient
//
//  Created by Langmuir on 2017/8/14.
//  Copyright © 2017年 zsyw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PHActivityView : UIView

+ (PHActivityView *)sharedInstance;
- (void)show;
- (void)hidden;

@end
