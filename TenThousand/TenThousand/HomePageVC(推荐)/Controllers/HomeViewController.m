//
//  HomeViewController.m
//  TenThousand
//
//  Created by baixue on 16/6/6.
//  Copyright © 2016年 baixue. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"推荐";
    
    UIView *statusBarView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, Screen_Width, 20)];
    statusBarView.backgroundColor = [UIColor colorWithRed:0.75 green:0.13 blue:0.20 alpha:1.00];
    [self.view addSubview:statusBarView];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
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
