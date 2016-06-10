//
//  SharedTruck.m
//  TruckHound
//
//  Created by Jeremy Lilje on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "SharedTruck.h"

@implementation SharedTruck

static SharedTruck *sharedTruck = nil;    // static instance variable

+ (SharedTruck *)makeTruck
{
    if (sharedTruck == nil)
    {
        sharedTruck = [[super allocWithZone:NULL] init];
    }
    return sharedTruck;
}

- (id)init
{
    if ( (self = [super init]) )
    {
        TruckSchedule *truckSchedule1 = [[TruckSchedule alloc] init];;
        truckSchedule1.scheduleStartTime = [NSDate date];
        truckSchedule1.scheduleEndTime = [NSDate date];
        truckSchedule1.scheduleLocation = @"bfe";
        
        truckName = @"jeremy's truck";
        truckBlurb = @"really, this is for me son";
        //truckMenu = ;
        truckSchedule = truckSchedule1;
    }
    return self;
}

- (void)customMethod {
    // implement your custom code here
}

// singleton methods
//+ (id)allocWithZone:(NSZone *)zone {
//    return [[self sharedTruck] retain];
//}
//
//- (id)copyWithZone:(NSZone *)zone {
//    return self;
//}
//
//- (id)retain {
//    return self;
//}
//
//- (NSUInteger)retainCount {
//    return NSUIntegerMax;  // denotes an object that cannot be released
//}
//
//- (void)release {
//    // do nothing - we aren't releasing the singleton object.
//}
//
//- (id)autorelease {
//    return self;
//}
//
//-(void)dealloc {
//    [super dealloc];
//}

@end