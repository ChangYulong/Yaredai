//
//  YRDTabBarVC.m
//  YaReDaiApp
//
//  Created by Langmuir on 2017/10/21.
//  Copyright © 2017年 Langmuir. All rights reserved.
//

#import "YRDTabBarVC.h"
#import "YRDNavigationController.h"
#import "YRDHomeVC.h"
#import "YRDCreditCardVC.h"
#import "YRDMineVC.h"

@interface YRDTabBarVC ()

@end

@implementation YRDTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    YRDHomeVC * homeVc = [YRDHomeVC new];
    YRDCreditCardVC * creditCardVc = [YRDCreditCardVC new];
    YRDMineVC * mineVc = [YRDMineVC new];
    
    YRDNavigationController * nav1 = [[YRDNavigationController alloc] initWithRootViewController:homeVc];
    YRDNavigationController * nav2 = [[YRDNavigationController alloc] initWithRootViewController:creditCardVc];
    YRDNavigationController * nav3 = [[YRDNavigationController alloc] initWithRootViewController:mineVc];
    
    nav1.tabBarItem.title = @"首页";
    nav2.tabBarItem.title = @"信用卡";
    nav3.tabBarItem.title = @"我的";
    [nav1.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -2)];
    [nav2.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -2)];
    [nav3.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -2)];
    
    [self initLayoutWith:nav1.navigationBar];
    [self initLayoutWith:nav2.navigationBar];
    [self initLayoutWith:nav3.navigationBar];
    
    nav1.tabBarItem.image = [[UIImage imageNamed:@"home"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav1.tabBarItem.selectedImage = [[UIImage imageNamed:@"home_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav2.tabBarItem.image = [[UIImage imageNamed:@"credit"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav2.tabBarItem.selectedImage = [[UIImage imageNamed:@"credit_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav3.tabBarItem.image = [[UIImage imageNamed:@"profile"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav3.tabBarItem.selectedImage = [[UIImage imageNamed:@"profile_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.viewControllers = @[nav1, nav2, nav3];
    self.tabBar.translucent = NO;
    [self.tabBar setTintColor:[UIColor colorWithHex:0x2572b9]];
    
    // 普通状态下的文字属性
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor colorWithHex:color_tabbar_text_normal];
    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    
    // set the text color for selected state
    // 选中状态下的文字属性
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor colorWithHex:color_tabbar_text_hight];
    selectedAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    
    // set the text Attributes
    // 设置文字属性
    UITabBarItem * tabBar = [UITabBarItem appearance];
    [tabBar setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    [tabBar setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
}

- (void)initLayoutWith:(UINavigationBar *)navBar {
    navBar.barStyle = UIBarStyleDefault;
    navBar.translucent = NO;
    navBar.barTintColor = [UIColor colorWithHex:0x2572B9];//背景色
    navBar.tintColor = [UIColor whiteColor];//返回颜色
    navBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};//标题颜色
    [navBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [navBar setShadowImage:[UIImage new]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
