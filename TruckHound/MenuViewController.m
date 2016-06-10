//
//  MenuViewController.m
//  TruckHound
//
//  Created by DetroitLabs on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListTVC.h"
#import "Truck.h"
#import "SharedTruck.h"
#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //[self displayDetails];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)displayDetails {
    // NSLog(@"in Menu's displayDetails method");
    
    SharedTruck *selectedTruck = [SharedTruck makeTruck];
    NSLog(@"selectedTruck: %@", selectedTruck->andTruckMenu);
    _menuImage.image = selectedTruck->andTruckMenu;
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
