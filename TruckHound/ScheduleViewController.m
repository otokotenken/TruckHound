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
//-(void)setMapLocation {
//    MKCoordinateRegion newRegion;
//    newRegion.center.latitude = _event.location.latitude;
//    newRegion.center.longitude = _event.location.longitude;
//    newRegion.span.latitudeDelta = 0.005;
//    newRegion.span.longitudeDelta = 0.005;
//    
//    [self.mapView setRegion:newRegion animated:YES];

//}
- (void)viewWillAppear:(BOOL)animated {
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 42.3650097;
    zoomLocation.longitude= -83.0729957;

    // 2... zoom approximately 1/2 mile radius but sent in meeters
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 800, 800);
    
    // 3
    [_theSpot setRegion:viewRegion animated:YES];
    
    NSString *display_coordinates=[NSString stringWithFormat:@"Latitude is %f and Longitude is %f",zoomLocation.longitude,zoomLocation.latitude];
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    [annotation setCoordinate:zoomLocation];
    [annotation setTitle:@"Click Labs"];
    [annotation setSubtitle:display_coordinates];
    [_theSpot addAnnotation:annotation];
}
// @42.3650097,-83.0751844
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end