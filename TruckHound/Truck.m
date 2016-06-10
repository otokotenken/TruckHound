//
//  Truck.m
//  TruckHound
//
//  Created by Jeremy Lilje on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Truck.h"

@implementation Truck

-(Truck *)initTruckWithName:(NSString *)truckName andTruckBlurb:(NSString *)truckBlurb andTruckImage:(UIImage *)truckMenu andTruckSchedule:(TruckSchedule *)truckSchedule
{
    self.truckName = truckName;
    self.truckBlurb = truckBlurb;
    self.truckMenu = truckMenu;
    self.truckSchedule = truckSchedule;
    return self;
};

@end