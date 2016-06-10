//
//  SharedTruck.h
//  TruckHound
//
//  Created by Jeremy Lilje on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Truck.h"

@interface SharedTruck : NSObject
{
    @public
    NSString *initTruckWithName;
    NSString *andTruckBlurb;
    UIImage *andTruckMenu;
    TruckSchedule *andTruckSchedule;
}

+ (SharedTruck *)makeTruck;

@end
