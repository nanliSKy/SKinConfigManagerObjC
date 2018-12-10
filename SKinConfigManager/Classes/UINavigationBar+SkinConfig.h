//
//  UINavigationBar+SkinConfig.h
//  Skin
//
//  Created by nanli on 2018/10/22.
//  Copyright © 2018 Great Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationBar (SkinConfig)


/**
 The navigation bar background.
 */
- (UINavigationBar *(^)(NSString *value))cBarTintColor;


/**
 the navigation items and bar button items.
 */
- (UINavigationBar *(^)(NSString *value))cTintColor;

/**
 the bar’s title text
 */
- (UINavigationBar *(^)(NSString *value))cTitleTextAttributes;

/**
 the bar's large title text.
 */
- (UINavigationBar *(^)(NSString *value))cLargeTitleTextAttributes;

@end

NS_ASSUME_NONNULL_END
