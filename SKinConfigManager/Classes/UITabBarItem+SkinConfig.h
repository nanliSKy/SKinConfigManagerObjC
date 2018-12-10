//
//  UITabBarItem+SkinConfig.h
//  Skin
//
//  Created by nanli on 2018/10/22.
//  Copyright © 2018 Great Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITabBarItem (SkinConfig)


/**
 the item title
 */
- (UITabBarItem *(^)(NSString *value))cTitle;

/**
 the item title config
 */
- (UITabBarItem *(^)(NSString *value, UIControlState state))cTitleTextAttributes;
/**
 the item no image
 */
- (UITabBarItem *(^)(NSString *value))cImage;

/**
 the item selected image
 */
- (UITabBarItem *(^)(NSString *value))cSelectedImage;

@end

NS_ASSUME_NONNULL_END
