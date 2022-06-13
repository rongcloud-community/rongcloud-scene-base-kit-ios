//
//  RCSViewController.m
//  RCSceneBaseKit
//
//  Created by 彭蕾 on 06/13/2022.
//  Copyright (c) 2022 彭蕾. All rights reserved.
//

#import "RCSViewController.h"
#import <RCSBaseKit.h>
#import "RCSBaseConstant.h"

@interface RCSViewController ()

@end

@implementation RCSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [RCSUIAdaptor designWithSize:CGSizeMake(kScreen_WIDTH, kScreen_HEIGHT)];
    
    [UIImage rcs_imageWithColor:[UIColor redColor]];
    
    [[RCSCountdown new] startCountdownWithTime:60 countDownCallBack:^(int timeStr) {
        NSLog(@"time: %d", timeStr);
    } countDownFinishCallBack:^{
        NSLog(@"coutdown finished");
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
