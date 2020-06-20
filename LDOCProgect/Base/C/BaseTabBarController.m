//
//  BaseTabBarController.m
//  LDOCProgect
//
//  Created by 曹来东 on 2020/6/20.
//  Copyright © 2020 曹来东. All rights reserved.
//

#import "BaseTabBarController.h"
#import "BaseNavigationController.h"
#import "HomeViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "MineViewController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController
- (void)loadView{
    [super loadView];
    UITabBarItem * item = [UITabBarItem appearanceWhenContainedInInstancesOfClasses:@[[BaseTabBarController class]]];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor ld_colorWithR:90 g:132 b:238 alpha:1.0];

    [item setTitleTextAttributes:attrs forState:UIControlStateSelected];

    // 设置字体尺寸:只有设置正常状态下,才会有效果
    NSMutableDictionary *attrsNor = [NSMutableDictionary dictionary];
    attrsNor[NSFontAttributeName] = [UIFont systemFontOfSize:11];
    [item setTitleTextAttributes:attrsNor forState:UIControlStateNormal];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupAllChildViewController];
    [self setupAllTitleButton];
}


#pragma mark - 添加所有子控制器
- (void)setupAllChildViewController
{

    // 首页
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    BaseNavigationController *nav0 = [[BaseNavigationController alloc] initWithRootViewController:homeVC];
    [self addChildViewController:nav0];
    
    //第二个模块
    SecondViewController * secondVC = [[SecondViewController alloc] init];
    BaseNavigationController * nav1 = [[BaseNavigationController alloc] initWithRootViewController:secondVC];
    [self addChildViewController:nav1];
    
    
    //第三个模块
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    BaseNavigationController *nav2 = [[BaseNavigationController alloc] initWithRootViewController:thirdVC];
    [self addChildViewController:nav2];

    
    
    // 我的
    MineViewController * mineVC = [[MineViewController alloc] init];
    BaseNavigationController *nav3 = [[BaseNavigationController alloc] initWithRootViewController:mineVC];
    [self addChildViewController:nav3];
    
}
// 设置tabBar上所有按钮内容
- (void)setupAllTitleButton
{
    //子控制器的TabBarItem决定 : 首页
    UINavigationController * nav = self.childViewControllers[0];
    nav.tabBarItem.title = @"首页";
    nav.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    nav.tabBarItem.selectedImage = Image(@"tabBar_essence_click_icon");
    
    //超市
    UINavigationController *nav1 = self.childViewControllers[1];
    nav1.tabBarItem.title = @"超市";
    nav1.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    nav1.tabBarItem.selectedImage = Image(@"tabBar_friendTrends_click_icon");
    

    
    // 专属客服
    UINavigationController *nav3 = self.childViewControllers[2];
    nav3.tabBarItem.title = @"客服";
    nav3.tabBarItem.image = [UIImage imageNamed:@"tabBar_customer_icon"];
    nav3.tabBarItem.selectedImage = Image(@"tabBar_customer_click_icon");
 
    //我的
    UINavigationController *nav5 = self.childViewControllers[3];
    nav5.tabBarItem.title = @"我的";
    nav5.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    nav5.tabBarItem.selectedImage = Image(@"tabBar_me_click_icon");
    
    
    
}

@end
