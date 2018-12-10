//
//  UITabBar+SkinConfig.m
//  Skin
//
//  Created by nanli on 2018/10/22.
//  Copyright © 2018 Great Technologies. All rights reserved.
//

#import "UITabBar+SkinConfig.h"
#import "NSObject+SkinConfig.h"
#import "SkinConfigManager.h"
#import "SkinConfigControl.h"
#import "SkinConfig.h"

@implementation UITabBar (SkinConfig)


- (UITabBar * _Nonnull (^)(NSString * _Nonnull))cBackgroundImage {
    return ^UITabBar *(NSString *value) {
        UIImage *image = [SkinConfigManager imageString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setBackgroundImage:);
        c.eType = eImage;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        self.backgroundImage = image;
        return self;
    };
}

- (UITabBar * _Nonnull (^)(NSString * _Nonnull))cShadowImage {
    return ^UITabBar *(NSString *value) {
        UIImage *image = [SkinConfigManager imageString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setShadowImage:);
        c.eType = eImage;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        self.shadowImage = image;
        return self;
    };
}
@end
