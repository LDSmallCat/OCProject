//
//  UIImage+UIImageCategory.h
//  LDOCProgect
//
//  Created by 曹来东 on 2020/6/20.
//  Copyright © 2020 曹来东. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (UIImageCategory)
/**生成不被渲染的图片*/
+ (instancetype)ld_imageOriginalWithName:(NSString *)imageName;
/**生成圆角图片 对象方法*/
- (instancetype)ld_circleImage;
/**生成圆角图片 类方法*/
+ (instancetype)ld_circleImageNamed:(NSString *)name;
/**用颜色生成图片*/
+ (instancetype)ld_imageWithColor:(UIColor *)color;
+ (instancetype)ld_imageWithColor:(UIColor *)color size:(CGSize)size;
@end

NS_ASSUME_NONNULL_END
