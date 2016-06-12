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
//        [dateFormatter setDateFormat:@"MM"];
//        [dateFormatter setDateFormat:@"dd"];
//        [dateFormatter setDateFormat:@"HH"];
//        [dateFormatter setDateFormat:@"mm"];
//        [dateFormatter setDateFormat:@"ss"];
    NSDateFormatter *dateFormatter2 = [[NSDateFormatter alloc] init];
    [dateFormatter2 setDateFormat:@"EEE MM-dd-yyyy 05:00"];
    
    NSString *startTime = [dateFormatter stringFromDate:selectedTruck->andTruckSchedule.scheduleStartTime];
//    NSString *endTime = @"EEE MM-dd-yyyy 06:00";
    NSString *endTime = [dateFormatter2 stringFromDate:selectedTruck->andTruckSchedule.scheduleEndTime];
    
        _scheduleStartTimeLabel.text = startTime;
        _scheduleEndTimeLabel.text = endTime;
        _scheduleLocationLabel.text = selectedTruck->andTruckSchedule.scheduleLocation;
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