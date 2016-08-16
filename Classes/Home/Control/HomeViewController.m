//
//  HomeViewController.m
//  兼职e族
//
//  Created by fanoi on 16/8/5.
//  Copyright © 2016年 fanoi. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()


@property (nonatomic,strong) UIView  *ScrollView;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationController.navigationBarHidden = YES;

    [self.tabBarController.tabBar setTintColor:RGB(38, 184, 242)];
 
    self.titleLable.text = @"兼职e族";
    
    [self hiddenBackItemBnt:YES];
    
    
    [self AddressesBtn];
    
    [self CreateScrollView];

}

-(void)CreateScrollView
{
    UIView *_ScrooView = [[UIView alloc]initWithFrame:CGRectMake(0, 64, UIScreenW, 120)];
    _ScrooView.backgroundColor = [UIColor redColor];
    _ScrooView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:_ScrooView];
}
-(void)AddressesBtn
{
    UIButton *  _AddreBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    _AddreBtn.frame = CGRectMake(0, 24, 70, 40);
//    _AddreBtn.layer.cornerRadius = 5;
//    _AddreBtn.layer.masksToBounds = YES;
    [_AddreBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_AddreBtn setTitle:@"定位" forState:UIControlStateNormal];
    _AddreBtn.titleLabel.font = [UIFont systemFontOfSize:18];
//    _AddreBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    UIImage *image = [UIImage imageNamed:@"dingwei"];
    [_AddreBtn setImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:0];
    _AddreBtn.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    [_AddreBtn addTarget:self action:@selector(AddressesAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.titleBackGroundView addSubview:_AddreBtn];
}
-(void)AddressesAction:(UIButton *)button
{
    
    NSLog(@"定位");
}
@end
