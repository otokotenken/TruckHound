//
//  TabViewController.m
//  TruckHound
//
//  Created by Jeremy Lilje on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "TabViewController.h"
#import "AboutViewController.h"
#import "ScheduleViewController.h"
#import "MenuViewController.h"
#import "Truck.h"

@interface TabViewController ()

@end

NSString *myMessage = @"jeremy's message";

@implementation TabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
  //  NSLog(@"im in the tab controller and the truck name is %@", _truckPassed.truckName);
    self.reloadInputViews;
    //self.
    
}


-(void)reloadInputViews{
    NSLog(@"we're getting in to reloadInputViews...");
}

-(void)viewWillAppear:(BOOL)animated
{
    // force the tableview to load
    NSLog(@"we're getting in to viewWillAppear...");
    //self.reload;
}

@end
