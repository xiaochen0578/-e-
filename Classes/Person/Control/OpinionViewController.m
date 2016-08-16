//
//  OpinionViewController.m
//  兼职e族
//
//  Created by HZ.CHEN on 16/8/9.
//  Copyright © 2016年 fanoi. All rights reserved.
//

#import "OpinionViewController.h"

@interface OpinionViewController ()<UITextViewDelegate>
{
    UILabel * _textlabel;
}
@property (nonatomic, retain) UITextView *textView;
@end

@implementation OpinionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    self.navigationController.navigationBarHidden = YES;
    
    self.titleLable.text = @"意见反馈";
    [self hiddenBackItemBnt:NO];
    
    [self CreateTextView];
}

-(void)CreateTextView
{
    CGFloat _Gap = 3.0;
    
    self.textView = [[UITextView alloc]initWithFrame:CGRectMake(_Gap, 67, UIScreenW-_Gap *2, 194)];
    self.textView.textColor = [UIColor blackColor];
    self.textView.font = [UIFont fontWithName:@"Arial" size:16.0];
    self.textView.delegate = self;
    self.textView.returnKeyType = UIReturnKeyDefault;
    
    self.textView.keyboardType = UIKeyboardTypeDefault;
    self.textView.scrollEnabled = YES;
    self.textView.userInteractionEnabled=YES;
    self.textView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.textView.layer.borderColor = lineColor_Values.CGColor;
    self.textView.layer.borderWidth = 0.5;
    
    [self.view addSubview: self.textView];
    
    
    _textlabel = [[UILabel alloc]initWithFrame:CGRectMake(3, 7, UIScreenW, 20)];
    _textlabel.text=@"请输入您的宝贵意见";
    [_textlabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:14]];
//    _textlabel.textColor =lineColor_Values;
    _textlabel.textAlignment=NSTextAlignmentLeft;
    [self.textView addSubview:_textlabel];
    
    UIButton * but =[UIButton buttonWithType:UIButtonTypeSystem];
    but.frame=CGRectMake(10, self.textView.frame.size.height+80, UIScreenW-20, 50);
    but.backgroundColor=RGB(9, 195, 160);
    [but setTitle:@"提交" forState:UIControlStateNormal];
    [but setTintColor:[UIColor whiteColor]];
    but.layer.cornerRadius = 5;
    but.layer.masksToBounds = YES;
    [but addTarget:self action:@selector(feedbackAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
}
 
-(void)feedbackAction:(UIButton *)button
{
    NSLog(@"提交意见");
}
@end
