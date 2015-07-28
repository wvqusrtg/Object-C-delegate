//
//  MainViewController.h
//  代理模式
//
//  Created by nixinsheng on 15/5/27.
//  Copyright (c) 2015年 倪新生. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface MainViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labValue;
- (IBAction)btnNextPage:(id)sender;


//-(void)update:(id)sender;
-(void)updateLab:(NSString*)value;
@end
