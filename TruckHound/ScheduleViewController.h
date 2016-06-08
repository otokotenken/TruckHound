//
//  ScheduleViewController.h
//  TruckHound
//
//  Created by DetroitLabs on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScheduleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *scheduleDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *scheduleTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scheduleLocationLabel;
@end
