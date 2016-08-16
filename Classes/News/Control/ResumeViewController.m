//
//  ResumeViewController.m
//  兼职e族
//
//  Created by HZ.CHEN on 16/8/5.
//  Copyright © 2016年 fanoi. All rights reserved.
//

#import "ResumeViewController.h"

@interface ResumeViewController ()

@end

@implementation ResumeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBarHidden = YES;
    
    self.titleLable.text = @"个人简历";
    [self hiddenBackItemBnt:NO];
}



@end
