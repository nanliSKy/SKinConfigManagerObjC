//
//  UILabel+SkinConfig.m
//  Skin
//
//  Created by nanli on 2018/10/18.
//  Copyright © 2018年 Great Technologies. All rights reserved.
//

#import "UILabel+SkinConfig.h"
#import "NSObject+SkinConfig.h"
#import "SkinConfigManager.h"
#import "SkinConfigControl.h"
#import "SkinConfig.h"

@implementation UILabel (SkinConfig)

- (UILabel * (^)(NSString *))cTitle {
    return ^UILabel *(NSString *value) {
        NSString *title = [SkinConfigManager normalString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setText:);
        c.eType = eString;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        self.text = title;
        return self;
    };
}

- (UILabel * (^)(NSString *))cColor {
    return ^UILabel *(NSString *value) {
        UIColor *color = [SkinConfigManager colorString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setTextColor:);
        c.eType = eColor;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        self.textColor = color;
        return self;
    };
}
- (UILabel * (^)(NSString *))cFont {
    return ^UILabel *(NSString *value) {
        UIFont *font = [SkinConfigManager fontString:value];
        SkinConfig *c = [[SkinConfig alloc] init];
        c.instance = self;
        c.method = @selector(setFont:);
        c.eType = eFont;
        c.indentifier = value;
        [self.skinControl skinConfigStyleClassInderfier:c];
        self.font = font;
        return self;
    };
}
@end
