//
//  BaseViewController.m
//  Unity-iPhone
//
//  Created by admin on 16/4/28.
//
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     
//    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.titleBackGroundView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, UIScreenW, 64)];
//    self.titleBackGroundView.backgroundColor=RGB(85, 193, 231);
    self.titleBackGroundView.backgroundColor=RGB(38, 184, 242);

    self.titleBackGroundView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:self.titleBackGroundView];
    
    self.titleLable = [[UILabel alloc]initWithFrame:CGRectMake(0, 24+5, UIScreenW, 30)];
    [self.titleLable setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
    self.titleLable.textColor=[UIColor whiteColor];
    self.titleLable.textAlignment=NSTextAlignmentCenter;
    [self.titleBackGroundView addSubview:self.titleLable];
    
    backItem = [UIButton buttonWithType:UIButtonTypeCustom];
    backItem.frame = CGRectMake(-10, 24, 60, 40);
    backItem.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [backItem setImage:[UIImage imageNamed:@"imgback"] forState:UIControlStateNormal];
    backItem.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
//    backItem.titleLabel.font = [UIFont systemFontOfSize:16];
    [backItem addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.titleBackGroundView addSubview:backItem];
}

-(void)hiddenBackItemBnt:(BOOL)isShow{
    backItem.hidden = isShow;
}

-(void)backAction:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}



@end
