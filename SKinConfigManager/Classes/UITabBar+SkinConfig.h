//
//  UITabBar+SkinConfig.h
//  Skin
//
//  Created by nanli on 2018/10/22.
//  Copyright © 2018 Great Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITabBar (SkinConfig)

- (UITabBar *(^)(NSString *value))cBackgroundImage;

- (UITabBar *(^)(NSString *value))cShadowImage;

@end

NS_ASSUME_NONNULL_END
