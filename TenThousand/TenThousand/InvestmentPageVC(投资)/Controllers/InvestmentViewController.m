//
//  InvestmentViewController.m
//  TenThousand
//
//  Created by baixue on 16/6/6.
//  Copyright © 2016年 baixue. All rights reserved.
//

#import "InvestmentViewController.h"
#import "InvestFirstCell.h"
#import "InvestOtherCell.h"

@interface InvestmentViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *myTableView;

@end

@implementation InvestmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"投资";
    
    [self.view addSubview:self.myTableView];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(rightBtnClicked)];
    self.navigationItem.rightBarButtonItem = rightItem;
}



- (UITableView *)myTableView
{
    _myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, Screen_Width, Screen_Height) style:UITableViewStylePlain];
    _myTableView.delegate = self;
    _myTableView.dataSource = self;
    _myTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _myTableView.backgroundColor = [UIColor colorWithRed:0.90 green:0.90 blue:0.90 alpha:1.00];
    
    return _myTableView;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        InvestFirstCell *investFirstCell = [tableView dequeueReusableCellWithIdentifier:@"InvestFirstCell"];
        if (investFirstCell == nil) {
            investFirstCell = [[[NSBundle mainBundle]loadNibNamed:@"InvestFirstCell" owner:nil options:nil] lastObject];
        }
        
        return investFirstCell;
    }
    else
    {
        InvestOtherCell *investOtherCell = [tableView dequeueReusableCellWithIdentifier:@"InvestOtherCell"];
        if (investOtherCell == nil) {
            investOtherCell = [[[NSBundle mainBundle]loadNibNamed:@"InvestOtherCell" owner:nil options:nil] lastObject];
        }
        
        return investOtherCell;
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return 250;
    }else{
        return 200;
    }
}



- (void)rightBtnClicked
{
    NSLog(@"right clicked");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
