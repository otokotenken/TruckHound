//
//  AboutViewController.m
//  TruckHound
//
//  Created by DetroitLabs on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//
#import "ListTVC.h"
#import "Truck.h"
#import "SharedTruck.h"
#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self displayDetails];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)displayDetails {
    SharedTruck *selectedTruck = [SharedTruck makeTruck];
    _aboutTitleLabel.text = selectedTruck->truckName;
    _aboutBlurbLabel.text = selectedTruck->truckBlurb;
}

- (void)viewDidAppear:(BOOL)animated
{
    [self displayDetails];
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
