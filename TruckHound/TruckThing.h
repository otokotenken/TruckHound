//
//  TruckThing.h
//  TruckHound
//
//  Created by Jeremy Lilje on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TruckThing <NSObject>

@required

//everything must have a short description (truck name)
- (void)setTruckName:(NSString *)truckName;

@end
