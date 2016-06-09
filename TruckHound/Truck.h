//
//  Truck.h
//  TruckHound
//
//  Created by Jeremy Lilje on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TruckSchedule.h"
#import "TruckThing.h"

@interface Truck : NSObject

@property (nonatomic) NSString *truckName;
@property (nonatomic) NSString *truckBlurb;
@property (nonatomic) UIImage *truckMenu;
@property (nonatomic) TruckSchedule *truckSchedule;

-(Truck *)initTruck: (NSString *)truckName : (NSString *)truckBlurb : (UIImage*)truckMenu : (TruckSchedule *)truckSchedule;

@end