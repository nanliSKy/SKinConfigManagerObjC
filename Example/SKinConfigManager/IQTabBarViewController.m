//
//  IQTabBarViewController.m
//  SkinConfigManager_Example
//
//  Created by nanli on 2018/10/23.
//  Copyright © 2018 nanli. All rights reserved.
//

#import "IQTabBarViewController.h"
#import "UITabBarItem+SkinConfig.h"
#import "SkinConfigManager.h"
#import "UITabBar+SkinConfig.h"

@interface IQTabBarViewController ()

@end

@implementation IQTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [SkinConfigManager shiftSkinWithName:@"default"];
    self.tabBar.cBackgroundImage(@"tabbar.background");
    
    
    [self.tabBar.items enumerateObjectsUsingBlock:^(UITabBarItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        obj.cTitleTextAttributes([NSString stringWithFormat:@"tabBarItem.baritem%lu.titleTextAttributes", (unsigned long)idx], UIControlStateNormal).cTitleTextAttributes([NSString stringWithFormat:@"tabBarItem.baritem%lu.selectTitleTextAttributes", (unsigned long)idx], UIControlStateSelected);
        obj.cTitle([NSString stringWithFormat:@"tabBarItem.baritem%lu.title", (unsigned long)idx]).cImage([NSString stringWithFormat:@"tabBarItem.baritem%lu.image", (unsigned long)idx]).cSelectedImage([NSString stringWithFormat:@"tabBarItem.baritem%lu.selectImage", (unsigned long)idx]);
    }];
    // Do any additional setup after loading the view.
}



@end
