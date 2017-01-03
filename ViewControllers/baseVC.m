//
//  baseVC.m
//  Eask
//
//  Created by mac on 16/10/13.
//  Copyright © 2016年 沸腾医疗. All rights reserved.
//

#import "baseVC.h"

@interface baseVC ()

@end

@implementation baseVC
-(UILabel *)lable
{
    if (!_lable)
    {
        self.lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 44)];
        _lable.textAlignment=NSTextAlignmentCenter;
        _lable.font = [UIFont systemFontOfSize:17];
        self.navigationItem.titleView=_lable;
    }
    return _lable;
}
- (void)viewDidLoad {     [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
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
