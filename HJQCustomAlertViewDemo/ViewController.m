//
//  ViewController.m
//  HJQCustomAlertViewDemo
//
//  Created by HanJunQiang on 16/7/7.
//  Copyright © 2016年 HaRi. All rights reserved.
//
//  http://blog.csdn.net/qq_31810357

#import "ViewController.h"
#import "HJQCustomAlertView.h"
@interface ViewController ()<HJQCustomAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Just a subtle background color
    [self.view setBackgroundColor:[UIColor colorWithRed:0.8f green:0.8f blue:0.8f alpha:1.0f]];
}

// Show HJQCustomAlertView
- (IBAction)showHJQCustomAlertView:(id)sender
{
    // Here we need to pass a full frame
    HJQCustomAlertView *alertView = [[HJQCustomAlertView alloc]init];
    
    // Add some custom content to the alert view
    [alertView setContainerView:[self createDemoView]];
    
    // Modify the parameters
    [alertView setButtonTitles:[NSMutableArray arrayWithObjects:@"Not Now",@"YES", nil]];
    [alertView setDelegate:self];
    
    // You may use a Block, rather than a delegate.
    [alertView setOnButtonTouchUpInside:^(HJQCustomAlertView *alertView, int buttonIndex) {
        NSLog(@" Write about buttonIndex related events. ");
    }];
    
    [alertView setUseMotionEffects:true];
    
    // And launch the dialog
    [alertView show];
}

#pragma  mark --- HJQCustomAlertViewDelegate
- (void)customIOS7dialogButtonTouchUpInside:(HJQCustomAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@" Write about buttonIndex related events. ");
    [alertView close];
}

- (UIView *)createDemoView
{
    UIView *demoView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 290, 280)];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 270, 260)];
    [imageView setImage:[UIImage imageNamed:@"demo"]];
    [demoView addSubview:imageView];
    
    return demoView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
