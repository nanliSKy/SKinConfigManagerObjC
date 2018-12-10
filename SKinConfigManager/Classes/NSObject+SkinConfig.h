//
//  NSObject+SkinConfig.h
//  Skin
//
//  Created by nanli on 2018/10/22.
//  Copyright © 2018 Great Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SkinConfigControl;

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (SkinConfig)
/**  */
@property (nonatomic, readonly, strong) SkinConfigControl *skinControl;

@end

NS_ASSUME_NONNULL_END
