//
//  SkinConfigManager.m
//  Skin
//
//  Created by nanli on 2018/10/17.
//  Copyright © 2018年 Great Technologies. All rights reserved.
//

#import "SkinConfigManager.h"
#import "UIColor+Hex.h"
@implementation SkinConfigManager

static NSString *_configsFilePath;

+ (instancetype)sharedSkinManager {
    static SkinConfigManager *_sharedSkinManager  = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedSkinManager = [[SkinConfigManager alloc] init];
    });
    
    return _sharedSkinManager;
}

+ (NSString *)normalString:(NSString *)keyPath {
    return [[self getSkinFileData] valueForKeyPath:keyPath];
}

+ (UIColor *)colorString:(NSString *)keyPath {
    NSString *colorStr = [[self getSkinFileData] valueForKeyPath:keyPath];
    return [UIColor colorWithHexString:colorStr];
}

+ (UIFont *)fontString:(NSString *)keyPath {
    NSString *fontStr = [[self getSkinFileData] valueForKeyPath:keyPath];
    return [UIFont systemFontOfSize:fontStr.floatValue];
}

+ (UIImage *)imageString:(NSString *)keyPath {
    NSString *imageStr = [[self getSkinFileData] valueForKeyPath:keyPath];
    return [UIImage imageNamed:imageStr];
}
+ (__kindof NSDictionary *)dictString:(NSString *)keyPath {
    NSDictionary *dict = [[self getSkinFileData] valueForKeyPath:keyPath];
    NSMutableDictionary *titleTextAttributes = [NSMutableDictionary dictionary];
    if ([dict.allKeys containsObject:@"NSFontAttributeName"]) {
        NSString *fontSize = dict[@"NSFontAttributeName"];
        [titleTextAttributes setValue:[UIFont systemFontOfSize:fontSize.floatValue] forKey:NSFontAttributeName];
    }
    if ([dict.allKeys containsObject:@"NSForegroundColorAttributeName"]) {
        NSString *color = dict[@"NSForegroundColorAttributeName"];
        [titleTextAttributes setValue:[UIColor colorWithHexString:color] forKey:NSForegroundColorAttributeName];
    }
    return titleTextAttributes;
}
/**
 寻找主题路径

 @param name 主题文件名
 @return 返回主题路径
 */
+ (BOOL)shiftSkinWithName:(NSString *)name {
    
    _configsFilePath = [[NSBundle mainBundle] pathForResource:name ofType:@"json"];
    if (_configsFilePath) {
        
        [[NSNotificationCenter defaultCenter] postNotificationName:@"skinChange" object:nil];
        return YES;
    }
    return NO;
}


/**
 皮肤文件数据

 @return 皮肤文件数据
 */
+ (NSDictionary *)getSkinFileData {
    NSDictionary *configsFile = [NSDictionary dictionaryWithContentsOfFile:_configsFilePath];
    if (!configsFile && _configsFilePath) {
        NSData *data = [NSData dataWithContentsOfFile:_configsFilePath];
        if (!data) return nil;
        configsFile = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
#ifdef DEBUG
        if (!configsFile) {
            NSLog(@"Maybe an error: %@ file content format!",[_configsFilePath lastPathComponent]);
        }
#endif
    }
    if (![configsFile isKindOfClass:[NSDictionary class]]) return nil;
    return configsFile;
}

@end
