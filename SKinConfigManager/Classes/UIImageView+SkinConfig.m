//
//  UIImageView+SkinConfig.m
//  Skin
//
//  Created by nanli on 2018/10/24.
//  Copyright © 2018 Great Technologies. All rights reserved.
//

#import "UIImageView+SkinConfig.h"
#import "NSObject+SkinConfig.h"
#import "SkinConfigManager.h"
#import "SkinConfigControl.h"
#import "SkinConfig.h"

@implementation UIImageView (SkinConfig)

- (UIImageView * _Nonnull (^)(NSString * _Nonnull))cImage {
    return ^ UIImageView *(NSString *value){
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

@end
