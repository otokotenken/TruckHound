//
//  ScheduleViewController.h
//  TruckHound
//
//  Created by DetroitLabs on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Truck.h"
#import "SharedTruck.h"
#import <MapKit/MapKit.h>

@interface ScheduleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *scheduleStartTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scheduleEndTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scheduleLocationLabel;

@property Truck *truckPassed;

@property (weak, nonatomic) IBOutlet MKMapView *theSpot;

@end
