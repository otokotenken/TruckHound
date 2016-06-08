//
//  TruckSchedule.h
//  TruckHound
//
//  Created by Jeremy Lilje on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TruckSchedule : NSObject

@property (nonatomic) NSDate* scheduleStartTime;
@property (nonatomic) NSDate* scheduleEndTime;
@property (nonatomic) NSString* scheduleLocation;

@end