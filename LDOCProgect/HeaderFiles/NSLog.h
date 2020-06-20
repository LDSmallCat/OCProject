//
//  NSLog.h
//  LDOCProgect
//
//  Created by 曹来东 on 2020/6/20.
//  Copyright © 2020 曹来东. All rights reserved.
//

#ifndef NSLog_h
#define NSLog_h


#ifdef DEBUG //调试
#define NSLog(...) NSLog(__VA_ARGS__);
#else //发布
#define NSLog(...)
#endif
#define NSLogFunc NSLog(@"%s", __func__);


#endif /* NSLog_h */
