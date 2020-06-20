//
//  UIColor+UIColorCategory.m
//  LDOCProgect
//
//  Created by 曹来东 on 2020/6/20.
//  Copyright © 2020 曹来东. All rights reserved.
//

#import "UIColor+UIColorCategory.h"

@implementation UIColor (UIColorCategory)

/// 随机色
+ (UIColor*)RandomColor{

   
    return [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];;
   
}

/// 返回 UIColor
/// @param red red
/// @param green green
/// @param blue blue
/// @param alpha alpha
+ (UIColor *)ld_colorWithR:(NSInteger)red g:(NSInteger)green b:(NSInteger)blue alpha:(CGFloat)alpha{
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}


/// 返回 UIColor
/// @param hex 16进制数字
/// @param alpha 透明度
+ (UIColor *)ld_colorWithHex:(NSInteger)hex alpha:(CGFloat)alpha{
    return [UIColor colorWithRed:((float)((hex & 0xff0000) >> 16))/255.0 green:((float)((hex & 0x00ff00) >> 8))/255.0 blue:((float)(hex & 0x0000ff))/255.0 alpha:1.0];
}


@end
