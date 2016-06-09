//
//  MenuViewController.h
//  TruckHound
//
//  Created by DetroitLabs on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Truck.h"

@interface MenuViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *menuImage;
@property Truck *truckPassedMenu;
@end