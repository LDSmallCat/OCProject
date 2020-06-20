//
//  UIColor+UIColorCategory.h
//  LDOCProgect
//
//  Created by 曹来东 on 2020/6/20.
//  Copyright © 2020 曹来东. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (UIColorCategory)


/// 随机色
+ (UIColor*)RandomColor;


/// 返回 UIColor
/// @param red red
/// @param green green
/// @param blue blue
/// @param alpha alpha
+ (UIColor *)ld_colorWithR:(NSInteger)red g:(NSInteger)green b:(NSInteger)blue alpha:(CGFloat)alpha;



/// 返回 UIColor
/// @param hex 16进制数字
/// @param alpha 透明度
+ (UIColor *)ld_colorWithHex:(NSInteger)hex alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
