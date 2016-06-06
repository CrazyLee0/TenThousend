//
//  MainTabBarController.m
//  TenThousand
//
//  Created by baixue on 16/6/6.
//  Copyright © 2016年 baixue. All rights reserved.
//

#import "MainTabBarController.h"
#import "UIImage+Color.h"

#define vcStringArray @[@"HomeViewController",@"InvestmentViewController",@"DiscoverViewController",@"WealthViewController",@"OtherViewController"]
#define vcTitleArray @[@"推荐",@"投资",@"发现",@"财富",@"更多"]

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.tintColor = [UIColor redColor];
    
    for (NSInteger i = 0; i < vcStringArray.count; i++) {
        
        UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:vcTitleArray[i] image:nil selectedImage:nil];
        UIViewController *tabChildVC = [[NSClassFromString(vcStringArray[i]) alloc] init];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tabChildVC];
        [nav.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:0.75 green:0.13 blue:0.20 alpha:1.00] size:CGSizeMake(Screen_Width, 64)] forBarMetrics:UIBarMetricsDefault];
        nav.navigationBar.tintColor = [UIColor whiteColor];
        nav.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
        
        nav.tabBarItem = tabBarItem;
        [self addChildViewController:nav];
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
