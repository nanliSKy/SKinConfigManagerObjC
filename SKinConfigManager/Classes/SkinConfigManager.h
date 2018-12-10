//
//  SkinConfigManager.h
//  Skin
//
//  Created by nanli on 2018/10/17.
//  Copyright © 2018年 Great Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SkinConfigManager : NSObject


/**
 皮肤管理

 @return 实例
 */
+ (instancetype)sharedSkinManager;


/**
 切换皮肤配置文件

 @param name 皮肤配置文件名 json
 @return 切换状态
 */
+ (BOOL)shiftSkinWithName:(NSString *)name;


/**
 返回string对象

 @param keyPath 路径
 @return string
 */
+ (NSString *)normalString:(NSString *)keyPath;

/**
 返回UIColor对象

 @param keyPath 路径
 @return uicolor
 */
+ (UIColor *)colorString:(NSString *)keyPath;

/**
 返回UIFont对象

 @param keyPath 路径
 @return UIFont
 */
+ (UIFont *)fontString:(NSString *)keyPath;

/**
 返回UIImage对象

 @param keyPath 路径
 @return UIImage
 */
+ (UIImage *)imageString:(NSString *)keyPath;

/**
 返回NSDictionary对象

 @param keyPath 路径
 @return NSDictionary
 */
+ (__kindof NSDictionary *)dictString:(NSString *)keyPath;

@end


