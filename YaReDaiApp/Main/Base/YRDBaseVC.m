//
//  YRDBaseVC.m
//  YaReDaiApp
//
//  Created by Langmuir on 2017/10/21.
//  Copyright © 2017年 Langmuir. All rights reserved.
//

#import "YRDBaseVC.h"

@interface YRDBaseVC ()

@end

@implementation YRDBaseVC

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.hidesBottomBarWhenPushed = NO;
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.leftButton.hidden = NO;
        self.rightButton.hidden = YES;
    }
    return self;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    for (id objc in [self.view subviews]) {
        if ([objc isKindOfClass:[UITextField class]]) {
            UITextField * tf = (UITextField *)objc;
            [tf resignFirstResponder];
        }
        if ([objc isKindOfClass:[UITextView class]]) {
            UITextView * tv = (UITextView *)objc;
            [tv resignFirstResponder];
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = YES;
    
    self.view.backgroundColor = [UIColor colorWithHex:color_background];
    [self.view addSubview:self.customNavView];
    [self.customNavView addSubview:self.leftButton];
    [self.customNavView addSubview:self.rightButton];
    [self.customNavView addSubview:self.customNavTitleLabel];
    
    [self yrd_addSubViews];
    [self yrd_setNavigation];
}

- (UIView *)customNavView {
    if (!_customNavView) {
        _customNavView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, NavHeight)];
        _customNavView.backgroundColor = [UIColor colorWithHex:color_navigation_bg];
    }
    return _customNavView;
}

- (UIButton *)leftButton {
    if (!_leftButton) {
        _leftButton = [[UIButton alloc] initWithFrame:CGRectMake(5, StatusHeight, 54, 44)];
        [_leftButton setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [_leftButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_leftButton setAdjustsImageWhenHighlighted:NO];
        _leftButton.titleLabel.font = [UIFont systemFontOfSize:16];
        [_leftButton addTarget:self action:@selector(leftBtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _leftButton;
}

- (UIButton *)rightButton {
    if (!_rightButton) {
        _rightButton = [[UIButton alloc] initWithFrame:CGRectMake(KScreenWidth - 44, StatusHeight, 44, 44)];
        [_rightButton addTarget:self action:@selector(rightBtnAction) forControlEvents:UIControlEventTouchUpInside];
        [_rightButton setAdjustsImageWhenHighlighted:NO];
    }
    return _rightButton;
}

- (UILabel *)customNavTitleLabel {
    if (!_customNavTitleLabel) {
        _customNavTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, StatusHeight, KScreenWidth - 100, 44)];
        _customNavTitleLabel.textAlignment = NSTextAlignmentCenter;
        _customNavTitleLabel.textColor = [UIColor colorWithHex:color_navigation_title];
        _customNavTitleLabel.font = [UIFont fontWithName:@"Arial-Bold" size:17];
    }
    return _customNavTitleLabel;
}

- (void)setCTitle:(NSString *)cTitle {
    _cTitle = cTitle;
    self.customNavTitleLabel.text = _cTitle;
}

- (void)leftBtnAction {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)rightBtnAction {
    
}

- (void)yrd_addSubViews {}

- (void)yrd_setNavigation {}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
