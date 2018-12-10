//
//  UIControl+SkinConfig.m
//  Skin
//
//  Created by nanli on 2018/10/22.
//  Copyright © 2018 Great Technologies. All rights reserved.
//

#import "UIControl+SkinConfig.h"
#import "NSObject+SkinConfig.h"
#import "SkinConfigManager.h"
#import "SkinConfigControl.h"
#import "SkinConfig.h"

@implementation UIControl (SkinConfig)

- (UIControl * _Nonnull (^)(NSString * _Nonnull))cTintColor {
    return ^UIControl *(NSString *value) {
        UIColor *color = [SkinConfigManager colorString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setTintColor:);
        c.eType = eColor;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        self.tintColor = color;
        return self;
    };
}
@end
