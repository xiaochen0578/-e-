//
//  INFOViewController.m
//  兼职e族
//
//  Created by HZ.CHEN on 16/8/9.
//  Copyright © 2016年 fanoi. All rights reserved.
//

#import "INFOViewController.h"

@interface INFOViewController ()

@end

@implementation INFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];

    self.navigationController.navigationBarHidden = YES;
    
    self.titleLable.text = @"新闻资讯";
    [self hiddenBackItemBnt:NO];
}




@end
