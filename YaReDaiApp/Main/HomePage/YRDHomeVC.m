//
//  YRDHomeVC.m
//  YaReDaiApp
//
//  Created by Langmuir on 2017/10/21.
//  Copyright © 2017年 Langmuir. All rights reserved.
//

#import "YRDHomeVC.h"
#import "NextViewController.h"

@interface YRDHomeVC ()

@end

@implementation YRDHomeVC

- (void)yrd_setNavigation {
    self.cTitle = @"首页";
}

- (void)yrd_addSubViews {
    UIButton * b = [[UIButton alloc] initWithFrame:CGRectMake(0, NavHeight, 100, 100)];
    b.backgroundColor = [UIColor greenColor];
    [self.view addSubview:b];
    [b addTarget:self action:@selector(bAction) forControlEvents:UIControlEventTouchUpInside];
}

- (void)bAction {
    NextViewController * next = [NextViewController new];
    [self.navigationController pushViewController:next animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
