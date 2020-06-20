//
//  UIBarButtonItem+UIBarButtonItemCategory.h
//  LDOCProgect
//
//  Created by 曹来东 on 2020/6/20.
//  Copyright © 2020 曹来东. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (UIBarButtonItemCategory)
// 快速创建UIBarButtonItem
+ (UIBarButtonItem *)itemWithimage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;

+ (UIBarButtonItem *)itemWithimage:(UIImage *)image selImage:(UIImage *)selImage target:(id)target action:(SEL)action;

+ (UIBarButtonItem *)backItemWithimage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action title:(NSString *)title normalColor:(UIColor *)normalColor highColor:(UIColor *)highColor titleFont:(UIFont *)titleFont;
@end

NS_ASSUME_NONNULL_END
