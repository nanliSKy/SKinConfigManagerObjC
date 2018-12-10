//
//  NSObject+SkinConfig.m
//  Skin
//
//  Created by nanli on 2018/10/22.
//  Copyright © 2018 Great Technologies. All rights reserved.
//

#import "NSObject+SkinConfig.h"
#import <objc/runtime.h>
#import "SkinConfigControl.h"

@implementation NSObject (SkinConfig)

- (SkinConfigControl *)skinControl {
    
    SkinConfigControl *config = objc_getAssociatedObject(self, @selector(skinControl));
    if (!config) {
        config = [[SkinConfigControl alloc] init];
        objc_setAssociatedObject(self, @selector(skinControl), config, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return config;
}

@end
