//
//  OpinionViewController.m
//  兼职e族
//
//  Created by HZ.CHEN on 16/8/9.
//  Copyright © 2016年 fanoi. All rights reserved.
//

#import "OpinionViewController.h"

@interface OpinionViewController ()

@end

@implementation OpinionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];

    self.navigationController.navigationBarHidden = YES;
    
    self.titleLable.text = @"意见反馈";
    [self hiddenBackItemBnt:NO];
}

 

@end
