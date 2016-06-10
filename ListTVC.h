//
//  ListTVC.h
//  TruckHound
//
//  Created by DetroitLabs on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Truck.h"
#import "SharedTruck.h"

@interface ListTVC : UITableViewController
@property (weak, nonatomic) NSIndexPath *checkedCell;


@end
