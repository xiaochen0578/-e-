//
//  CollectViewController.m
//  兼职e族
//
//  Created by HZ.CHEN on 16/8/5.
//  Copyright © 2016年 fanoi. All rights reserved.
//

#import "CollectViewController.h"

@interface CollectViewController ()

@end

@implementation CollectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationController.navigationBarHidden = YES;
    
    self.titleLable.text = @"消息记录";
    [self hiddenBackItemBnt:NO];
}



@end
