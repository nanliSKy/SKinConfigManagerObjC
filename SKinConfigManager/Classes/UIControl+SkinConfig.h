//
//  UIControl+SkinConfig.h
//  Skin
//
//  Created by nanli on 2018/10/22.
//  Copyright © 2018 Great Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIControl (SkinConfig)
/**
 颜色
 */
- (UIControl *(^)(NSString *value))cTintColor;

@end

NS_ASSUME_NONNULL_END
