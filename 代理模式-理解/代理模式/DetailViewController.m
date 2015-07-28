//
//  DetailViewController.m
//  代理模式
//
//  Created by nixinsheng on 15/5/27.
//  Copyright (c) 2015年 倪新生. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        self.navigationItem.title = @"DetailViewController(代理模式)";
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

- (IBAction)btnBack:(id)sender {
    /**
     *  @author nixinsheng, 15-05-27 10:05:51
     *  在第二个页面的update方法调用了第一个页面的updteLab方法来更新第一个页面的Label的值
     
        （在第二个页面调用第一个页面的方法-在B页面中调用A页面中的方法）
     */
    [self.delegate updateLab:self.txtValue.text];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}
@end
