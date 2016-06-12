//
//  ScheduleViewController.m
//  TruckHound
//
//  Created by DetroitLabs on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListTVC.h"
#import "Truck.h"
#import "SharedTruck.h"
#import "ScheduleViewController.h"

@interface ScheduleViewController ()

@end

@implementation ScheduleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self displayDetails];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)displayDetails {
    SharedTruck *selectedTruck = [SharedTruck makeTruck];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"EEE MM-dd-yyyy HH:mm"];
    
    NSString *startTime = [dateFormatter stringFromDate:selectedTruck->truckSchedule.scheduleStartTime];
    
    NSString *endTime = @"Fri 06-10-2016 06:00";

    
        _scheduleStartTimeLabel.text = startTime;
        _scheduleEndTimeLabel.text = endTime;
        _scheduleLocationLabel.text = selectedTruck->andTruckSchedule.scheduleLocation;
}

- (void)viewDidAppear:(BOOL)animated
{
    [self displayDetails];
}

- (void)viewWillAppear:(BOOL)animated {
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 42.365842;
    zoomLocation.longitude= -83.072642;

    // 2... zoom approximately 1/2 mile radius but sent in meeters
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 800, 800);
    
    // 3
    [_theSpot setRegion:viewRegion animated:YES];
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