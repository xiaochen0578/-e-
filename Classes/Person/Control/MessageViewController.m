//
//  MessageViewController.m
//  兼职e族
//
//  Created by HZ.CHEN on 16/8/9.
//  Copyright © 2016年 fanoi. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.navigationController.navigationBarHidden = YES;
    
    self.view.backgroundColor = RGB(244, 244, 244);;
    self.titleLable.text = @"个人消息";
    [self hiddenBackItemBnt:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
