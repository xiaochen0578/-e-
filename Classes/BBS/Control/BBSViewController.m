//
//  BBSViewController.m
//  兼职e族
//
//  Created by fanoi on 16/8/5.
//  Copyright © 2016年 fanoi. All rights reserved.
//

#import "BBSViewController.h"
#import "FollowTableView.h"
#import "ReferralTableView.h"

@interface BBSViewController ()<UIScrollViewDelegate>

@property (nonatomic, strong) UISegmentedControl *segment;
@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation BBSViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationController.navigationBarHidden = YES;
    
    [self hiddenBackItemBnt:YES];
    
    [self settingScrollView];
    
    [self settingSegment];

}
- (void)settingScrollView{
    
    CGFloat ScrollH = UIScreenH-64-49;
    
    FollowTableView *_tableViewOne = [[FollowTableView alloc] initWithFrame:CGRectMake(0,20, UIScreenW, ScrollH)];
    ReferralTableView *_tableViewTwo = [[ReferralTableView alloc] initWithFrame:CGRectMake(UIScreenW,20, UIScreenW, ScrollH)];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 64, UIScreenW, ScrollH)];
    scrollView.backgroundColor = [UIColor yellowColor];
    scrollView.delegate = self;
    scrollView.bounces = NO;
    scrollView.pagingEnabled = YES;
    scrollView.directionalLockEnabled = YES;
    
//    scrollView.contentInset = UIEdgeInsetsMake(-64, 0, -49, 0);
    scrollView.contentSize = CGSizeMake(3 *UIScreenW, 0);
    scrollView.showsHorizontalScrollIndicator = YES;
    
    [self.view addSubview:scrollView];
    [scrollView addSubview:_tableViewOne];
    [scrollView addSubview:_tableViewTwo];
    _scrollView = scrollView;
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    CGFloat offset = scrollView.contentOffset.x;
    
    self.segment.selectedSegmentIndex = offset/UIScreenW;
}

- (void)settingSegment{
    
    CGFloat _segmentW = 170.0;
    UISegmentedControl *segment = [[UISegmentedControl alloc] initWithItems:@[@"关注",@"推荐",@"话题"]];
    segment.frame = CGRectMake((UIScreenW-_segmentW)/2, 24, _segmentW, 35);
    
//    self.navigationItem.titleView = segment;
//    _navigatinItem.titleView = segment;
    
//    segment.tintColor = RGB(250, 250, 250);
   
    segment.selectedSegmentIndex = 0;
    
    [self.titleBackGroundView addSubview:segment];
//    self.titleBackGroundView.backgroundColor = [UIColor whiteColor];
    [segment addTarget:self action:@selector(segmentBtnClick) forControlEvents:UIControlEventValueChanged];
    _segment = segment;
    
}

- (void)segmentBtnClick{
    
    //    NSLog(@"改变值");
    self.scrollView.contentOffset = CGPointMake(self.segment.selectedSegmentIndex * UIScreenW, 0);
    NSLog(@"dddddddd");
}



@end
