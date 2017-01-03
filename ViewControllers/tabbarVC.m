//
//  tabbarVC.m
//  Eask
//
//  Created by mac on 16/10/11.
//  Copyright © 2016年 沸腾医疗. All rights reserved.
//

#import "tabbarVC.h"
#import "bar1VC.h"
#import "bar2VC.h"
#import "bar3VC.h"
#import "bar4VC.h"
#import "bar5VC.h"
@interface tabbarVC ()
@property (nonatomic,copy)NSString *badgeValue;
@property (nonatomic,strong)UIButton *barItem1;
@property (nonatomic,strong)UIButton *barItem2;
@property (nonatomic,strong)UIButton *barItem3;
@property (nonatomic,strong)UIButton *barItem4;
@property (nonatomic,strong)UIButton *barItem5;
@end

@implementation tabbarVC
-(UIButton *)barItem1
{
    if (!_barItem1) {
        self.barItem1 = [[UIButton alloc]init];
    }
    return _barItem1;
}
-(UIButton *)barItem2
{
    if (!_barItem2) {
        self.barItem2 = [[UIButton alloc]init];
    }
    return _barItem2;
}
-(UIButton *)barItem3
{
    if (!_barItem3) {
        self.barItem3 = [[UIButton alloc]init];
    }
    return _barItem3;
}
-(UIButton *)barItem4
{
    if (!_barItem4) {
        self.barItem4 = [[UIButton alloc]init];
    }
    return _barItem4;
}
-(UIButton *)barItem5
{
    if (!_barItem5) {
        self.barItem5 = [[UIButton alloc]init];
    }
    return _barItem5;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setTabbar];
}
- (void)setTabbar
{
    //修改tabbar 默认字体颜色
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       [UIColor blackColor],NSForegroundColorAttributeName,
                                                       nil] forState:UIControlStateNormal];
    
    //修改tabbar 选中字体颜色
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       [UIColor grayColor], NSForegroundColorAttributeName,
                                                       nil] forState:UIControlStateSelected];
    
    bar1VC *firstVC = [[bar1VC alloc]init];
    UINavigationController *navi1 = [[UINavigationController alloc]initWithRootViewController:firstVC];
    
    bar2VC *secondVC = [[bar2VC alloc]init];
    UINavigationController *navi2 = [[UINavigationController alloc]initWithRootViewController:secondVC];
    
    bar3VC *thirdVC = [[bar3VC alloc]init];
    UINavigationController *navi3 = [[UINavigationController alloc]initWithRootViewController:thirdVC];
    
    bar4VC *fouthVC = [[bar4VC alloc]init];
    UINavigationController *navi4 = [[UINavigationController alloc]initWithRootViewController:fouthVC];
    
    bar5VC *fifthVC = [[bar5VC alloc]init];
    UINavigationController *navi5 = [[UINavigationController alloc]initWithRootViewController:fifthVC];
    
    //隐藏系统tabbar
    self.tabBar.hidden=YES;
    self.viewControllers = @[navi1,navi2,navi3,navi4,navi5];
    
    
    //自定义tabbar
    UIView *tabbarBgView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_HEIGHT-49, SCREEN_WIDTH, 49)];
    tabbarBgView.backgroundColor = UIColorWithRGBA(239, 247, 241, 1);
    [self.view addSubview:tabbarBgView];
    
    
    //tabbarItem1(底部按钮1)
    self.barItem1.frame = CGRectMake(0, 0, SCREEN_WIDTH/5, tabbarBgView.frame.size.height);
    [_barItem1 setTitle:@"首页" forState:UIControlStateNormal];
    [_barItem1 addTarget:self action:@selector(handleBar1Action) forControlEvents:UIControlEventTouchUpInside];
    [_barItem1 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [tabbarBgView addSubview:_barItem1];
    //tabbarItem2(底部按钮2)
    self.barItem2.frame = CGRectMake(SCREEN_WIDTH/5, 0, SCREEN_WIDTH/5, tabbarBgView.frame.size.height);
    [_barItem2 setTitle:@"发现" forState:UIControlStateNormal];
    [_barItem2 addTarget:self action:@selector(handleBar2Action) forControlEvents:UIControlEventTouchUpInside];
    [_barItem2 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [tabbarBgView addSubview:_barItem2];
    //tabbarItem3(底部按钮3)
    self.barItem3.frame = CGRectMake(SCREEN_WIDTH/5*2+(SCREEN_WIDTH/5-80)/2, -17, 80, 80);
    _barItem3.backgroundColor = UIColorWithRGBA(239, 247, 241, 1);
    [_barItem3 addTarget:self action:@selector(handleBar3Action) forControlEvents:UIControlEventTouchUpInside];
    _barItem3.layer.cornerRadius = 40;
    [_barItem3 setTitle:@"提问" forState:UIControlStateNormal];
    [_barItem3 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [tabbarBgView addSubview:_barItem3];
    //tabbarItem4(底部按钮4)
    self.barItem4.frame = CGRectMake(SCREEN_WIDTH/5*3, 0, SCREEN_WIDTH/5, tabbarBgView.frame.size.height);
    [_barItem4 setTitle:@"关注" forState:UIControlStateNormal];
    [_barItem4 addTarget:self action:@selector(handleBar4Action) forControlEvents:UIControlEventTouchUpInside];
    [_barItem4 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [tabbarBgView addSubview:_barItem4];
    //tabbarItem5(底部按钮5)
    self.barItem5.frame = CGRectMake(SCREEN_WIDTH/5*4, 0, SCREEN_WIDTH/5, tabbarBgView.frame.size.height);
    [_barItem5 setTitle:@"我的" forState:UIControlStateNormal];
    [_barItem5 addTarget:self action:@selector(handleBar5Action) forControlEvents:UIControlEventTouchUpInside];
    [_barItem5 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [tabbarBgView addSubview:_barItem5];
    
}
//bar1按钮点击事件
- (void)handleBar1Action
{
    self.selectedIndex = 0;
    [_barItem1 setTitleColor:UIColorWithRGBA(0, 181, 74, 1) forState:UIControlStateNormal];
    [_barItem2 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem3 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem4 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem5 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
}
//bar2按钮点击事件
- (void)handleBar2Action
{
    self.selectedIndex = 1;
    [_barItem2 setTitleColor:UIColorWithRGBA(0, 181, 74, 1) forState:UIControlStateNormal];
    [_barItem1 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem3 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem4 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem5 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    
}
//bar3按钮点击事件
- (void)handleBar3Action
{
     self.selectedIndex = 2;
    [_barItem3 setTitleColor:UIColorWithRGBA(0, 181, 74, 1) forState:UIControlStateNormal];
    [_barItem1 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem2 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem4 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem5 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
}
//bar4按钮点击事件
- (void)handleBar4Action
{
    self.selectedIndex = 3;
    [_barItem4 setTitleColor:UIColorWithRGBA(0, 181, 74, 1) forState:UIControlStateNormal];
    [_barItem2 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem1 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem3 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem5 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
}
//bar5按钮点击事件
- (void)handleBar5Action
{
    self.selectedIndex = 4;
    [_barItem5 setTitleColor:UIColorWithRGBA(0, 181, 74, 1) forState:UIControlStateNormal];
    [_barItem2 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem4 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem3 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_barItem1 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
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
