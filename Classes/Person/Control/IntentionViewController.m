//
//  IntentionViewController.m
//  兼职e族
//
//  Created by HZ.CHEN on 16/8/9.
//  Copyright © 2016年 fanoi. All rights reserved.
//

#import "IntentionViewController.h"

@interface IntentionViewController ()

@end

@implementation IntentionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];

    self.navigationController.navigationBarHidden = YES;
    
    self.titleLable.text = @"求职意向";
    [self hiddenBackItemBnt:NO];
}

 

@end
