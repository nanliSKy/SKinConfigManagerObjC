//
//  UIView+SkinConfig.h
//  Skin
//
//  Created by nanli on 2018/10/17.
//  Copyright © 2018年 Great Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>


@class SkinConfigControl;

@interface UIView (SkinConfig)

- (UIView *(^)(NSString *value))cBackgroundColor;


- (UIView *(^)(NSString *value))cTintColor;
@end

