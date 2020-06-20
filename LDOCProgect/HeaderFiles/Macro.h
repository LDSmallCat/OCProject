//
//  Macro.h
//  LDOCProgect
//
//  Created by 曹来东 on 2020/6/20.
//  Copyright © 2020 曹来东. All rights reserved.
//

#ifndef Macro_h
#define Macro_h

#define StatusBarHeight   [UIApplication sharedApplication].statusBarFrame.size.height
#define NavBarHeight   44
#define kScreenW   [UIScreen mainScreen].bounds.size.width
#define kScreenH   [UIScreen mainScreen].bounds.size.height

#define SystemFont(x)      [UIFont systemFontOfSize:x]
#define BoldFont(x)  [UIFont boldSystemFontOfSize:x]

//不同屏幕尺寸字体适配（320，568是因为效果图为IPHONE5 如果不是则根据实际情况修改）
#define kScreenWidthRatio  (kScreenW / 375.0)
#define kScreenHeightRatio (kScreenH / 667.0)
#define AdaptedWidth(x)  floorf((x) * kScreenWidthRatio)
#define AdaptedHeight(x) floorf((x) * kScreenHeightRatio)

#define Adapted(x)  floorf((x) * kScreenWidthRatio)

#define AdaptedFont(x)     [UIFont systemFontOfSize:AdaptedWidth(x)]
#define AdaptedBoldFont(x) [UIFont boldSystemFontOfSize:AdaptedWidth(x)]


#define closedArc4random(from,to) (int)(from + (arc4random() % (to – from + 1)))
#define openArc4random(x,y)  (int)(from + (arc4random() % (to – from)))

#define WS(weakSelf)  __weak __typeof(self)weakSelf = self;
#define APPDelegate ((AppDelegate *)[[UIApplication sharedApplication] delegate])

#define appVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

#define FSystemVersion          ([[[UIDevice currentDevice] systemVersion] floatValue])
#define DSystemVersion          ([[[UIDevice currentDevice] systemVersion] doubleValue])
#define SSystemVersion          ([[UIDevice currentDevice] systemVersion])

#define WriteToLocation(OBJECT,KEY) [[NSUserDefaults standardUserDefaults] setObject:OBJECT forKey:KEY]
#define ReadFromLocation(KEY)       [[NSUserDefaults standardUserDefaults] objectForKey:KEY]

//字符串是否有值
#define kStringIsEmpty(str) ([str isKindOfClass:[NSNull class]] || str == nil || [str length] < 1 ? YES : NO )
//数组是否为空
#define kArrayIsEmpty(array) (array == nil || [array isKindOfClass:[NSNull class]] || array.count == 0)
//字典是否为空
#define kDictIsEmpty(dic) (dic == nil || [dic isKindOfClass:[NSNull class]] || dic.allKeys == 0)
//是否是空对象
#define kObjectIsEmpty(_object) (_object == nil \
|| [_object isKindOfClass:[NSNull class]] \
|| ([_object respondsToSelector:@selector(length)] && [(NSData *)_object length] == 0) \
|| ([_object respondsToSelector:@selector(count)] && [(NSArray *)_object count] == 0))


//临时文件夹路径
#define TempPath NSTemporaryDirectory()
#define CachePath [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject]
#define DocumentPath [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]
#define LibraryPath  [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) firstObject]



#endif /* Macro_h */
