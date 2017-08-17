//
//  ViewController.m
//  scanCode
//
//  Created by 胡高广 on 2017/8/17.
//  Copyright © 2017年 胡高广. All rights reserved.
//

#import "ViewController.h"
#import "HggScanCodeViewController.h"
#define WIDHT [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.title = @"首页";
    
    /** 按钮 **/
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    button.frame = CGRectMake(150, 200, 100, 100);
    [button setTitle:@"点击" forState:(UIControlStateNormal)];
    [button setTitleColor:[UIColor redColor] forState:(UIControlStateNormal)];
    button.backgroundColor = [UIColor greenColor];
    [button addTarget:self action:@selector(click) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark -- 按钮点击事件
- (void)click
{
    HggScanCodeViewController *scanVC = [[HggScanCodeViewController alloc] init];
    [self.navigationController pushViewController:scanVC animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
