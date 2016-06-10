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


@interface Truck : NSObject

@property (nonatomic) NSString *truckName;
@property (nonatomic) NSString *truckBlurb;
@property (nonatomic) UIImage *truckMenu;
@property (nonatomic) TruckSchedule *truckSchedule;

-(Truck *)initTruckWithName:(NSString *)truckName andTruckBlurb:(NSString *)truckBlurb andTruckImage:(UIImage *)truckMenu andTruckSchedule:(TruckSchedule *)truckSchedule;

@end