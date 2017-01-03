//
//  Macro.h
//  Eask
//
//  Created by mac on 16/10/10.
//  Copyright © 2016年 沸腾医疗. All rights reserved.
//

#ifndef Macro_h
#define Macro_h
//通过Red,Green,Blue设置颜色
#define UIColorWithRGBA(r,g,b,a)[UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define UIColorWithRGB(r,g,b) UIColorWithRGBA(r,g,b,1.0)


//通过16进制数设置颜色值
#define UIColorWithHexA(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 \
alpha:(a)]
#define UIColorWithHex(rgbValue)    UIColorWithHexA(rgbValue, 1.0)
#endif /* Macro_h */
