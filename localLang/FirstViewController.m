//
//  FirstViewController.m
//  localLang
//
//  Created by wzkj on 16/8/18.
//  Copyright © 2016年 ywkj. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (nonatomic, strong) UISegmentedControl *segment;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController.navigationBar setTintColor:[UIColor redColor]];
    [self.navigationController.navigationBar setBarTintColor:[UIColor greenColor]];
    // 设置返回按钮图标 此处设置不能调整图片的位置
    //        self.navigationController.navigationBar.backIndicatorImage = [[UIImage imageNamed:@"login_back_arrow"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //        self.navigationController.navigationBar.backIndicatorTransitionMaskImage = [[[UIImage imageNamed:@"login_back_arrow"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] imageWithAlignmentRectInsets:UIEdgeInsetsMake(0, -3, 44, 0)];
    self.title = @"第一个页面";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"login_back_arrow"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(backAction:)];
    
    // 返回按钮的UIBarButtonItem 此设置可以调整图片的位置
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:[[UIImage imageNamed:@"login_back_arrow"] stretchableImageWithLeftCapWidth:16 topCapHeight:16] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:[[UIBarButtonItem appearance] backButtonBackgroundImageForState:UIControlStateNormal barMetrics:UIBarMetricsDefault] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:[[UIBarButtonItem appearance] backButtonBackgroundImageForState:UIControlStateNormal barMetrics:UIBarMetricsDefault] forState:UIControlStateDisabled barMetrics:UIBarMetricsDefault];
    
    _segment = [[UISegmentedControl alloc] initWithItems:@[@"一",@"二",@"三",@"四",@"五",@"六",@"七"]];
    [_segment setFrame:CGRectMake(0, 44+15, CGRectGetWidth([UIScreen mainScreen].bounds), 40-15)];
    [self.navigationController.navigationBar addSubview:_segment];
}

- ( void ) viewWillAppear : ( BOOL ) animated {
    [ super viewWillAppear :animated ];
    
    CGRect rect = self.navigationController.navigationBar.frame ;
    self.navigationController.navigationBar.frame = CGRectMake ( rect.origin.x , rect.origin.y , rect.size.width , 84 ) ;
    [ self.navigationController.navigationBar setTitleVerticalPositionAdjustment:-40.0 forBarMetrics : UIBarMetricsDefault ];
    
    [ self.navigationItem.leftBarButtonItem setBackgroundVerticalPositionAdjustment:-40.0 forBarMetrics : UIBarMetricsDefault];
    
    UIOffset adjustment = [[UIBarButtonItem appearance] backButtonTitlePositionAdjustmentForBarMetrics:UIBarMetricsDefault];
    adjustment.vertical -= 40;
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:adjustment forBarMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setBackButtonBackgroundVerticalPositionAdjustment:-40 forBarMetrics:UIBarMetricsDefault];
    
    //    UIView* navBarTransitionView = [self.navigationController.view.subviews objectAtIndex:0];
    //    navBarTransitionView.frame = CGRectMake(0,navBarTransitionView.frame.origin.y+40,CGRectGetWidth(navBarTransitionView.frame),navBarTransitionView.frame.size.height+40);
}
- ( void ) viewWillDisappear : ( BOOL ) animated {
    [super viewWillDisappear :animated ] ;
    
    CGRect rect = self.navigationController.navigationBar.frame;
    self.navigationController.navigationBar.frame = CGRectMake (rect.origin.x , rect.origin.y , rect.size.width , 44) ;
    
    [_segment removeFromSuperview];
    [self.navigationController.navigationBar setTitleVerticalPositionAdjustment:0.00000001 forBarMetrics : UIBarMetricsDefault];
    
    [ self.navigationItem.leftBarButtonItem setBackgroundVerticalPositionAdjustment:0 forBarMetrics : UIBarMetricsDefault ];
    
    UIOffset adjustment = [[UIBarButtonItem appearance] backButtonTitlePositionAdjustmentForBarMetrics:UIBarMetricsDefault];
    adjustment.vertical = 0.000000001;
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:adjustment forBarMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setBackButtonBackgroundVerticalPositionAdjustment:0 forBarMetrics:UIBarMetricsDefault];
}

-(void)backAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
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
