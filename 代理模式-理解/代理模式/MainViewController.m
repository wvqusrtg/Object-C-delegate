//
//  MainViewController.m
//  代理模式
//
//  Created by nixinsheng on 15/5/27.
//  Copyright (c) 2015年 倪新生. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"MainViewController(代理模式)";
    // Do any additional setup after loading the view from its nib.
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
//-(void)update:(id)sender;
-(void)updateLab:(NSString*)value{
    self.labValue.text = value;
}

- (IBAction)btnNextPage:(id)sender {
    DetailViewController* dVC = [[DetailViewController alloc]initWithNibName:@"DetailViewController" bundle:nil];
    dVC.delegate = self;
    //跳转动画
    dVC.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:dVC animated:YES completion:nil];
}
@end
