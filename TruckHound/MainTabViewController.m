//
//  MainTabViewController.m
//  TruckHound
//
//  Created by DetroitLabs on 6/12/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "MainTabViewController.h"
#import "ListTVC.h"

@interface MainTabViewController ()

@end

@implementation MainTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:(38.0/255.0) green:(38.0/255.0) blue:(38.0/255.0) alpha:1.0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
