//
//  SkinConfig.h
//  Skin
//
//  Created by nanli on 2018/10/18.
//  Copyright © 2018年 Great Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, eParamType) {
    eString,
    eColor,
    eFont,
    eImage,
    eState,
    eDict,
    eInt,
    eFloat
};

@interface SkinConfig : NSObject

/** 皮肤配置文件中的 keypath 路径 */
@property (nonatomic, copy) NSString *indentifier;

/**  */
@property (nonatomic, assign) eParamType eType;

/**  */
@property (nonatomic, assign) UIControlState state;

/**  */
@property (nonatomic, assign) SEL method;

/**  */
@property (nonatomic, strong) id instance;

@end
