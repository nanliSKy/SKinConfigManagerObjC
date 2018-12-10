//
//  IQDetailViewController.m
//  SkinConfigManager_Example
//
//  Created by nanli on 2018/10/23.
//  Copyright © 2018 nanli. All rights reserved.
//

#import "IQDetailViewController.h"
#import "UIView+SkinConfig.h"
#import "UILabel+SkinConfig.h"
#import "UIImageView+SkinConfig.h"

@interface IQDetailViewController ()

/**  */
@property (nonatomic, weak)IBOutlet UILabel *lab;
/**  */
@property (nonatomic, weak)IBOutlet UIImageView *imageView;
@end

@implementation IQDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"换皮肤";
    self.view.cBackgroundColor(@"color.backgroundColor");
    self.lab.cColor(@"label.color").cFont(@"label.font").cTitle(@"label.title");
    self.imageView.cImage(@"image.image01");
    // Do any additional setup after loading the view.
}



@end
