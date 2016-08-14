//
//  AutonymViewController.m
//  兼职e族
//
//  Created by HZ.CHEN on 16/8/9.
//  Copyright © 2016年 fanoi. All rights reserved.
//

#import "AutonymViewController.h"

@interface AutonymViewController ()

@end

@implementation AutonymViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];

    self.navigationController.navigationBarHidden = YES;
    
    self.titleLable.text = @"实名认证";
    [self hiddenBackItemBnt:NO];}



@end
