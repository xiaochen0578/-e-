//
//  PersonViewController.m
//  兼职e族
//
//  Created by fanoi on 16/8/5.
//  Copyright © 2016年 fanoi. All rights reserved.
//

#import "PersonViewController.h"
#import "MessageViewController.h"
#import "AutonymViewController.h"
#import "INFOViewController.h"
#import "IntentionViewController.h"
#import "OpinionViewController.h"

@interface PersonViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView * tableView;
@property (nonatomic,strong) UIView * headView;
@property(nonatomic,strong) NSArray * imageArray;
@property(nonatomic,strong) NSArray * nameArray;

@end

@implementation PersonViewController

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
    
    self.view.backgroundColor = RGB(244, 244, 244);;
    self.titleLable.text = @"个人中心";
    [self hiddenBackItemBnt:YES];
    
    _nameArray = @[@"个人信息",@"实名认证",@"新闻资讯",@"求职意向",@"推荐分享",@"意见反馈"];
    _imageArray = @[@"geren",@"shimingzhi",@"news",@"qiuzhi",@"share",@"yijian"];

    
    [self.view addSubview:self.tableView];
    
   
    [self LogoinBtn];
    
    [self BarcodeBtn];
    
}

-(void)LogoinBtn
{
    
}
-(void)BarcodeBtn
{
    UIButton *  _BarcodeBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    _BarcodeBtn.frame = CGRectMake(UIScreenW-52, 20, 40, 40);
    _BarcodeBtn.layer.cornerRadius = 5;
    _BarcodeBtn.layer.masksToBounds = YES;

    [_BarcodeBtn setBackgroundImage:[UIImage imageNamed:@"saoyisao"] forState:0];
    _BarcodeBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [_BarcodeBtn addTarget:self action:@selector(BarcodeAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.titleBackGroundView addSubview:_BarcodeBtn];
}

-(UIView *)headView
{
    if (!_headView) {
        _headView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, UIScreenW, 150)];
        
        _headView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"grzxbg"]];
        

    }
    return _headView;
}
-(UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, UIScreenW, UIScreenH-64)];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
        [self setExtraCellLineHidden:self.tableView];
        _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _tableView.tableHeaderView = self.headView;

    }
    return _tableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _nameArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *myCell = @"mycell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:myCell];
    
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:myCell];
        cell.selectionStyle = UITableViewCellAccessoryNone;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, UIScreenW, 50)];
        [cell.contentView addSubview:view];
        
        UIImageView * imagaView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 35, 35)];
        imagaView.image=[UIImage imageNamed:self.imageArray[indexPath.row]];
        
        imagaView.tag=200;
        [view addSubview:imagaView];
        
        
        UILabel * label1 = [[UILabel alloc]initWithFrame:CGRectMake(60, 5, 200, 40)];
        label1.text=_nameArray[indexPath.row];
        label1.font = [UIFont systemFontOfSize:16];
        //        label.textColor=RGB(68, 71, 74);
        [view addSubview:label1];
        
        
        
        
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
    return 50;
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
            
            
            MessageViewController *VC1 = [[MessageViewController alloc]init];
            [self.navigationController pushViewController:VC1 animated:YES];
            
        }
            break;
        case 1:
        {
            NSLog(@"2");
            
            AutonymViewController *VC1 = [[AutonymViewController alloc]init];
            [self.navigationController pushViewController:VC1 animated:YES];
        }
            break;
        case 2:
        {

            NSLog(@"3");
            
            INFOViewController *VC1 = [[INFOViewController alloc]init];
            [self.navigationController pushViewController:VC1 animated:YES];
        }
            break;
        case 3:
        {
            NSLog(@"4");
            
            IntentionViewController *VC1 = [[IntentionViewController alloc]init];
            [self.navigationController pushViewController:VC1 animated:YES];
        }
            break;
        case 4:
        {
            NSLog(@"5");
            
            //            CollectViewController *VC1 = [[CollectViewController alloc]init];
            //            [self.navigationController pushViewController:VC1 animated:YES];
        }
            break;
            
        case 5:
        {
            NSLog(@"6");
            
            OpinionViewController *VC1 = [[OpinionViewController alloc]init];
            [self.navigationController pushViewController:VC1 animated:YES];
        }
            break;
        default:
            break;
    }
    
}
//二维码
-(void)BarcodeAction:(UIButton *)button
{
    NSLog(@"扫描二维码");
}
@end
