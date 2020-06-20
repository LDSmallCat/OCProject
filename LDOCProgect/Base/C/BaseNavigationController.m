//
//  BaseNavigationController.m
//  LDOCProgect
//
//  Created by 曹来东 on 2020/6/20.
//  Copyright © 2020 曹来东. All rights reserved.
//

#import "BaseNavigationController.h"
#import "UIBarButtonItem+CategoryBarButtonItem.h"
#import "UIImage+UIImageCategory.h"
@interface BaseNavigationController ()

@end

@implementation BaseNavigationController
-(void)setBottomLineColor{
    
    UIImage *colorImage = [UIImage ld_imageWithColor:UIColor.clearColor size:CGSizeMake(UIScreen.mainScreen.bounds.size.width, 0.34)];
    [self.navigationController.navigationBar setShadowImage:colorImage];

    
}

- (void)loadView{
    [super loadView];
    UINavigationBar * navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    attrs[NSForegroundColorAttributeName] = UIColor.whiteColor;

    [navBar setTitleTextAttributes:attrs];
    
     //设置导航条背景图片
    //[navBar setBackgroundImage:Image(@"top") forBarMetrics:UIBarMetricsDefault];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count > 0) {
        UIBarButtonItem * leftBarButtonitem = [UIBarButtonItem backItemWithimage:[UIImage imageNamed:@"navigationButtonReturn"] highImage:[UIImage imageNamed:@"navigationButtonReturn"] target:self action:@selector(back) title:@"返回" normalColor:UIColor.whiteColor highColor:UIColor.whiteColor titleFont:[UIFont systemFontOfSize:15]];
        viewController.navigationItem.leftBarButtonItem = leftBarButtonitem;
    }
    [super pushViewController:viewController animated:animated];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}

@end
