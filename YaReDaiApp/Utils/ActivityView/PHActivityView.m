//
//  PHActivityView.m
//  PHClient
//
//  Created by Langmuir on 2017/8/14.
//  Copyright © 2017年 zsyw. All rights reserved.
//

#import "PHActivityView.h"

@interface PHActivityView ()

@property (nonatomic, strong) UIActivityIndicatorView * indicator;

@end

@implementation PHActivityView

+ (PHActivityView *)sharedInstance {
    static PHActivityView * instance = nil;
    static dispatch_once_t oncetoken;
    dispatch_once(&oncetoken, ^{
        instance = [[self alloc] initWithFrame:CGRectMake(0, 64, KScreenWidth, KScreenHeight - 64)];
    });
    return instance;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.27];
        _indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        _indicator.center = CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2 - 64);
        _indicator.hidesWhenStopped = YES;
        [self addSubview:_indicator];
    }
    return self;
}

- (void)show {
    [[UIApplication sharedApplication].keyWindow addSubview:self];
    self.hidden = NO;
    [self.indicator startAnimating];
    
    int64_t delayInSeconds = 3;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [self hidden];
    });
}

- (void)hidden {
    [self.indicator stopAnimating];
    self.hidden = YES;
    [self removeFromSuperview];
}

@end
