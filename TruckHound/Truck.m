//
//  Truck.m
//  TruckHound
//
//  Created by Jeremy Lilje on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Truck.h"

@implementation Truck

-(Truck *)initTruck:(NSString *)truckName :(NSString *)truckBlurb :(UIImage *)truckMenu :(TruckSchedule *)truckSchedule
{
    self.truckName = truckName;
    self.truckBlurb = truckBlurb;
    self.truckMenu = truckMenu;
    self.truckSchedule = truckSchedule;
    return self;
};

@end