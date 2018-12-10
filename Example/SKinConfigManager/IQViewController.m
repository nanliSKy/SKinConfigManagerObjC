//
//  IQViewController.m
//  SKinConfigManager
//
//  Created by nanli on 12/10/2018.
//  Copyright (c) 2018 nanli. All rights reserved.
//

#import "IQViewController.h"
#import "UILabel+SkinConfig.h"
#import "SkinConfigManager.h"
#import "UINavigationBar+SkinConfig.h"
#import "UIView+SkinConfig.h"

@interface IQViewController ()
/**  */
@property (nonatomic, weak)IBOutlet UITableView *tableView;
/**  */
@property (nonatomic, strong) NSArray *theme;
@end

@implementation IQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
     self.title = @"首页";
    
 self.navigationController.navigationBar.cBarTintColor(@"navigationBar.barTintColor").cTintColor(@"navigationBar.tintColor").cTitleTextAttributes(@"navigationBar.titleTextAttributes");
    
     self.view.cBackgroundColor(@"color.backgroundColor");
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)theme {
    if (!_theme) {
        _theme = @[@"default", @"red"];
    }
    return _theme;
}

@end

@interface IQViewController (UITableView) <UITableViewDataSource, UITableViewDelegate>

@end

@implementation IQViewController (UITableView)

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.theme.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.theme[indexPath.row];
    cell.textLabel.cColor(@"label.color");
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    dispatch_async(dispatch_get_main_queue(), ^{
        [SkinConfigManager shiftSkinWithName:self.theme[indexPath.row]];
    });
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self performSegueWithIdentifier:@"detail" sender:nil];
    });
}

@end
