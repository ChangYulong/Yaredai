//
//  YRDNavigationController.m
//  YaReDaiApp
//
//  Created by Langmuir on 2017/10/21.
//  Copyright © 2017年 Langmuir. All rights reserved.
//

#import "YRDNavigationController.h"

@interface YRDNavigationController ()

@end

@implementation YRDNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
