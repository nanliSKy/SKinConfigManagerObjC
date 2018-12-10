//
//  UITabBarItem+SkinConfig.m
//  Skin
//
//  Created by nanli on 2018/10/22.
//  Copyright © 2018 Great Technologies. All rights reserved.
//

#import "UITabBarItem+SkinConfig.h"
#import "NSObject+SkinConfig.h"
#import "SkinConfigManager.h"
#import "SkinConfigControl.h"
#import "SkinConfig.h"

@implementation UITabBarItem (SkinConfig)

- (UITabBarItem * _Nonnull (^)(NSString * _Nonnull))cTitle {
    return ^UITabBarItem *(NSString *value) {
        NSString *title = [SkinConfigManager normalString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setTitle:);
        c.eType = eString;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        self.title = title;
        return self;
    };
}

- (UITabBarItem * _Nonnull (^)(NSString * _Nonnull, UIControlState))cTitleTextAttributes {
    return ^UITabBarItem *(NSString *value, UIControlState state) {
        NSDictionary *dict = [SkinConfigManager dictString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setTitleTextAttributes:forState:);
        c.eType = eState;
        c.state = state;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        [self setTitleTextAttributes:dict forState:state];
        return self;
    };
}
- (UITabBarItem * _Nonnull (^)(NSString * _Nonnull))cImage {
    return ^UITabBarItem *(NSString *value) {
        UIImage *image = [SkinConfigManager imageString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setImage:);
        c.eType = eImage;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        self.image = image;
        return self;
    };
}

- (UITabBarItem * _Nonnull (^)(NSString * _Nonnull))cSelectedImage {
    return ^UITabBarItem *(NSString *value) {
        UIImage *image = [SkinConfigManager imageString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setSelectedImage:);
        c.eType = eImage;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        self.selectedImage = image;
        return self;
    };
}
@end
