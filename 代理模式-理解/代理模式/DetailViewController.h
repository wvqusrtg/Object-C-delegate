//
//  DetailViewController.h
//  代理模式
//
//  Created by nixinsheng on 15/5/27.
//  Copyright (c) 2015年 倪新生. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"
@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtValue;
//@property(weak,nonatomic)MainViewController* mainVC;
@property(weak,nonatomic)id delegate;
- (IBAction)btnBack:(id)sender;



@end
