//
//  SkinConfigControl.h
//  Skin
//
//  Created by nanli on 2018/10/18.
//  Copyright © 2018年 Great Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SkinConfig;

@interface SkinConfigControl : NSObject

/**
 管控需要换肤的控件

 @param config 实现控件换肤功能的处理类
 */
- (void)skinConfigStyleClassInderfier:(SkinConfig *)config;

@end
