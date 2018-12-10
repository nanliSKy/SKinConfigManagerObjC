//
//  SkinConfigControl.m
//  Skin
//
//  Created by nanli on 2018/10/18.
//  Copyright © 2018年 Great Technologies. All rights reserved.
//

#import "SkinConfigControl.h"
#import "SkinConfig.h"
#import "SkinConfigManager.h"

@interface SkinConfigControl ()
/**  */
@property (nonatomic, strong) NSMutableArray<SkinConfig *> *cacheSkinConfig;

@end
@implementation SkinConfigControl

- (instancetype)init {
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateSkin) name:@"skinChange" object:nil];
    }
    return self;
}

- (void)updateSkin {
    [self.cacheSkinConfig enumerateObjectsUsingBlock:^(SkinConfig * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
    #pragma clang diagnostic push
    #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        switch (obj.eType) {
            case eString:
            {
                NSString *string = [SkinConfigManager normalString:obj.indentifier];
                [obj.instance performSelector:obj.method withObject:string];
            }
                
                break;
            case eColor:
            {
                UIColor *color = [SkinConfigManager colorString:obj.indentifier];
                [obj.instance performSelector:obj.method withObject:color];
            }
                
                break;
            case eFont:
            {
                UIFont *font = [SkinConfigManager fontString:obj.indentifier];
                [obj.instance performSelector:obj.method withObject:font];
            }
                
            case eImage: {
                UIImage *image = [SkinConfigManager imageString:obj.indentifier];
                [obj.instance performSelector:obj.method withObject:image];
            }
                break;
            case eState: {
                NSDictionary *dict = [SkinConfigManager dictString:obj.indentifier];
                [obj.instance performSelector:obj.method withObject:dict withObject:@(obj.state)];
            }
            case eDict:
            {
                NSDictionary *dict = [SkinConfigManager dictString:obj.indentifier];
                [obj.instance performSelector:obj.method withObject:dict];
            }
                
                break;
            case eInt:
                
                break;
            case eFloat:
                
                break;
                
        }
    #pragma clang diagnostic pop
        
    }];
}

- (void)skinConfigStyleClassInderfier:(SkinConfig *)config {
    [self.cacheSkinConfig addObject:config];
}

- (NSMutableArray *)cacheSkinConfig {
    if (!_cacheSkinConfig) {
        _cacheSkinConfig = [NSMutableArray array];
    }
    return _cacheSkinConfig;
}

@end
