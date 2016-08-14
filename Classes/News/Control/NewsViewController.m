//
//  NewsViewController.m
//  兼职e族
//
//  Created by fanoi on 16/8/5.
//  Copyright © 2016年 fanoi. All rights reserved.
//

#import "NewsViewController.h"
#import "WorkViewController.h"
#import "RecordViewController.h"
#import "ResumeViewController.h"
#import "CollectViewController.h"

@interface NewsViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;
//@property (nonatomic,strong) PageControlView  *mainScorllView;
@property (nonatomic,strong) UIView  *headView;
@property(nonatomic,strong)NSArray * imageArray;
@property(nonatomic,strong)NSArray * nameArray1;
@property(nonatomic,strong)NSArray * nameArray2;


@end


@implementation NewsViewController
-(void)viewDidLayoutSubviews
{
    if ([self.tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [self.tableView setSeparatorInset:UIEdgeInsetsZero];
        
    }
    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)])  {
        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor yellowColor];
    
    
    self.navigationController.navigationBarHidden = YES;
    
    self.titleLable.text = @"消息记录";
    [self hiddenBackItemBnt:YES];
    
    _nameArray1 = @[@"工作经历",@"预约记录",@"个人简历",@"收藏"];
    _nameArray2 = @[@"查看我的工作经历",@"查看申请过的工作",@"查看以及修改个人简历",@"查看已收藏工作"];
    _imageArray = @[@"jop",@"yuyue",@"jianli",@"shoucang"];
    
    [self.view addSubview:self.tableView];
    
}
-(UIView *)headView
{
    if (!_headView) {
        _headView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, UIScreenW, 100)];
        
//        _headView.backgroundColor = [UIColor redColor];
        
        UIImageView * imagaView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, UIScreenW, _headView.frame.size.height)];
        imagaView.image=[UIImage imageNamed:@"dalvanniu"];
        
         [_headView addSubview:imagaView];
    }
    return _headView;
}
-(UITableView *)tableView
{
    if (_tableView ==nil) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, UIScreenW, UIScreenH-64)];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
        [self setExtraCellLineHidden:_tableView];
        
        _tableView.tableHeaderView = self.headView;
        
    }
    return _tableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _nameArray1.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *myCell = @"mycell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:myCell];
    
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:myCell];
        cell.selectionStyle = UITableViewCellAccessoryNone;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, UIScreenW, 60)];
        [cell.contentView addSubview:view];
        
        UIImageView * imagaView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 35, 35)];
        imagaView.image=[UIImage imageNamed:self.imageArray[indexPath.row]];
        
        imagaView.tag=200;
        [view addSubview:imagaView];
        
        
        UILabel * label1 = [[UILabel alloc]initWithFrame:CGRectMake(60, 5, 100, 30)];
        label1.text=_nameArray1[indexPath.row];
        label1.font = [UIFont systemFontOfSize:16];
//        label.textColor=RGB(68, 71, 74);
        [view addSubview:label1];
        
        UILabel * label2 = [[UILabel alloc]initWithFrame:CGRectMake(60, 35, 200, 20)];
        label2.text=_nameArray2[indexPath.row];
        label2.font = [UIFont systemFontOfSize:12];
        //        label.textColor=RGB(68, 71, 74);
        [view addSubview:label2];
        
        
    }
    return cell;
}
-(void)setExtraCellLineHidden:(UITableView *)tableView
{
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor clearColor];
    [tableView setTableFooterView:view];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPat{
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]){
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    switch (indexPath.row) {
        case 0:
        {
            NSLog(@"1");
            
            WorkViewController *VC1 = [[WorkViewController alloc]init];
            [self.navigationController pushViewController:VC1 animated:YES];
        }
            break;
        case 1:
        {
            NSLog(@"1");
            
            RecordViewController*VC1 = [[RecordViewController alloc]init];
            [self.navigationController pushViewController:VC1 animated:YES];
        }
            break;
        case 2:
        {
            
            NSLog(@"1");
            
            ResumeViewController *VC1 = [[ResumeViewController alloc]init];
            [self.navigationController pushViewController:VC1 animated:YES];
        }
            break;
        case 3:
        {
            NSLog(@"1");
            
            CollectViewController *VC1 = [[CollectViewController alloc]init];
            [self.navigationController pushViewController:VC1 animated:YES];
        }
            break;
            
        default:
            break;
    }
    
}
@end
