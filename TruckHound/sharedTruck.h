//
//  sharedTruck.h
//  TruckHound
//
//  Created by Jeremy Lilje on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface sharedTruck : NSObject
{
    
}


@end
@interface AwardCenter : NSObject {
    // whatever instance vars you want
}

+ (AwardCenter *)sharedCenter;   // class method to return the singleton object

- (void)customMethod; // add optional methods to customize the singleton class

@end