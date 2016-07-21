//
//  MeTableViewController.m
//  news_APP
//
//  Created by qingyun on 16/6/27.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "SetTableViewController.h"

@interface SetTableViewController ()
@property (strong, nonatomic) IBOutlet UISwitch *switchON;

@end

@implementation SetTableViewController
-(UISwitch *)switchON{
    if (_switchON==nil) {
        _switchON = [[UISwitch alloc] init];
    }
    return _switchON;
}

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)switchAction:(id)sender {
    if (_switchON.isOn) {
        self.tabBarController.view.alpha=0.4;
    }
    else{
        self.tabBarController.view.alpha=1;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
