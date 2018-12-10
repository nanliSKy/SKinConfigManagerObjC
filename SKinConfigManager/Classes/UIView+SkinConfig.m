//
//  UIView+SkinConfig.m
//  Skin
//
//  Created by nanli on 2018/10/17.
//  Copyright © 2018年 Great Technologies. All rights reserved.
//

#import "UIView+SkinConfig.h"
#import "NSObject+SkinConfig.h"
#import "SkinConfigControl.h"
#import "SkinConfigManager.h"
#import "SkinConfigControl.h"
#import "SkinConfig.h"

@implementation UIView (SkinConfig)


- (UIView * (^)(NSString *))cBackgroundColor {
    return ^ UIView *(NSString *value) {
        UIColor *color = [SkinConfigManager colorString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setBackgroundColor:);
        c.eType = eColor;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        self.backgroundColor = color;
        return self;
    };
}

- (UIView * _Nonnull (^)(NSString * _Nonnull))cTintColor {
    return ^ UIView *(NSString *value) {
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
