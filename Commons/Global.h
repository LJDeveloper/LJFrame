//
//  Global.h
//  Eask
//
//  Created by mac on 16/10/10.
//  Copyright © 2016年 沸腾医疗. All rights reserved.
//

#ifndef Global_h
#define Global_h

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width) //屏幕宽度
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)//屏幕高度
//iOS8
#define iOS8 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0 ? YES : NO)
//打印
#ifdef DEBUG
#   define DLog(...) NSLog((@"%s [Line %d] %@"), __PRETTY_FUNCTION__, __LINE__, [NSString stringWithFormat:__VA_ARGS__])
#   define SLog(...) NSLog(__VA_ARGS__)
#else
#   define DLog(...)
#   define SLog(...)
#endif /* Global_h */
#endif /* Global_h */
