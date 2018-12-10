//
//  UINavigationBar+SkinConfig.m
//  Skin
//
//  Created by nanli on 2018/10/22.
//  Copyright © 2018 Great Technologies. All rights reserved.
//

#import "UINavigationBar+SkinConfig.h"
#import "NSObject+SkinConfig.h"
#import "SkinConfigManager.h"
#import "SkinConfigControl.h"
#import "SkinConfig.h"

@implementation UINavigationBar (SkinConfig)

- (UINavigationBar * _Nonnull (^)(NSString * _Nonnull))cBarTintColor {
    return ^UINavigationBar *(NSString *value) {
        UIColor *color = [SkinConfigManager colorString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setBarTintColor:);
        c.eType = eColor;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        self.barTintColor = color;
        return self;
    };
}

- (UINavigationBar * _Nonnull (^)(NSString * _Nonnull))cTintColor {
    return ^UINavigationBar *(NSString *value) {
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
- (UINavigationBar * _Nonnull (^)(NSString * _Nonnull))cTitleTextAttributes {
    return ^UINavigationBar *(NSString *value) {
        NSDictionary *dict = [SkinConfigManager dictString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setTitleTextAttributes:);
        c.eType = eDict;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        self.titleTextAttributes = dict;
        return self;
    };
}
- (UINavigationBar * _Nonnull (^)(NSString * _Nonnull))cLargeTitleTextAttributes {
    return ^UINavigationBar *(NSString *value) {
        NSDictionary *dict = [SkinConfigManager dictString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setLargeTitleTextAttributes:);
        c.eType = eDict;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        self.largeTitleTextAttributes = dict;
        return self;
    };
}

@end
