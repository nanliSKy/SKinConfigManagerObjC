//
//  UIImageView+SkinConfig.h
//  Skin
//
//  Created by nanli on 2018/10/24.
//  Copyright © 2018 Great Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (SkinConfig)

- (UIImageView *(^)(NSString *value))cImage;

@end

NS_ASSUME_NONNULL_END
