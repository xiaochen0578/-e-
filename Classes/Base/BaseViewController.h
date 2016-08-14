//
//  BaseViewController.h
//  Unity-iPhone
//
//  Created by admin on 16/4/28.
//
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
{
    UIButton *backItem;
}
@property (nonatomic,strong) UIView *titleBackGroundView;
@property (nonatomic,strong) UILabel *titleLable;

-(void)hiddenBackItemBnt:(BOOL)isShow;
-(void)backAction:(UIButton *)sender;

@end
