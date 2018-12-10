//
//  UILabel+SkinConfig.h
//  Skin
//
//  Created by nanli on 2018/10/18.
//  Copyright © 2018年 Great Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface UILabel (SkinConfig)

/**
 内容
 */
- (UILabel *(^)(NSString *value))cTitle;

/**
 颜色
 */
- (UILabel *(^)(NSString *value))cColor;


/**
 字体
 */
- (UILabel * (^)(NSString *value))cFont;


@end


