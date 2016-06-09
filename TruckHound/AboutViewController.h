//
//  AboutViewController.h
//  TruckHound
//
//  Created by DetroitLabs on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Truck.h"

@interface AboutViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *aboutTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *aboutBlurbLabel;

@property Truck *truckPassedAbout;

@end
