//
//  ListTVC.m
//  TruckHound
//
//  Created by DetroitLabs on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ListTVC.h"
#import "Truck.h"
#import "SharedTruck.h"
#import "AboutViewController.h"

@interface ListTVC ()

@end

@implementation ListTVC

NSArray *truckArray;
NSArray *truckSearchResults;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeTrucks];
}

-(void)initializeTrucks
{
    TruckSchedule *truckSchedule1 = [[TruckSchedule alloc] init];;
    truckSchedule1.scheduleStartTime = [NSDate date];
    truckSchedule1.scheduleEndTime = [NSDate date];
    truckSchedule1.scheduleLocation = @"29749 East River Road, Grosse Ile, MI 48138";
    
    TruckSchedule *truckSchedule2 = [[TruckSchedule alloc] init];;
    truckSchedule2.scheduleStartTime = [NSDate date];
    truckSchedule2.scheduleEndTime = [NSDate date];
    truckSchedule2.scheduleLocation = @"22540 East River Road, Grosse Ile, MI 48138";
    
    //Vehicle *mustang = [[Vehicle alloc]initWithModelName:@"Mustang" andThumbnailImage:[UIImage imageNamed:@"red_mustang_1.jpg"] andMainImage:[UIImage imageNamed:@"red_mustang_1.jpg"]];
    
    
    Truck *truck1 = [[Truck alloc]initTruckWithName: @"Mac Shack" andTruckBlurb: @"We are a Detroit based food truck specializing in creative Mac n Cheese & French Fries." andTruckImage: [UIImage imageNamed:@"1.JPG"] andTruckSchedule: truckSchedule1];
    Truck *truck2 = [[Truck alloc]initTruckWithName:@"Drifter Coffee" andTruckBlurb:@"We're a mobile coffee shop in Southeast Michigan. From the tiny door of our vintage Serro Scotty trailer to yours, we're serving up quality local coffee and caffeinating the masses." andTruckImage:[UIImage imageNamed: @"1.JPG"] andTruckSchedule:truckSchedule2];
    
    truckArray = [[NSArray alloc]initWithObjects: truck1,truck2, nil];
}

//- (void)viewDidAppear:(BOOL)animated
//{
//    [self.tableView reloadData];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return truckArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellJL" forIndexPath:indexPath];
   int i = indexPath.row;
    
    Truck *currentTruck = truckArray[i];
    
    NSString *nameString = currentTruck.truckName;
    cell.textLabel.text = nameString;
        if (_checkedCell == indexPath) {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        } else {
            cell.accessoryType = UITableViewCellAccessoryNone;
        }
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%ld", (long)indexPath.row); // you can see selected row number in your console;
    Truck *truckToPass = truckArray[indexPath.row];
    SharedTruck *selectedTruck = [SharedTruck makeTruck];
    selectedTruck->andTruckMenu = truckToPass.truckMenu;
    selectedTruck->andTruckBlurb = truckToPass.truckBlurb;
    selectedTruck->andTruckSchedule.scheduleStartTime = truckToPass.truckSchedule.scheduleStartTime;
    selectedTruck->andTruckSchedule.scheduleEndTime = truckToPass.truckSchedule.scheduleEndTime;
    selectedTruck->andTruckSchedule.scheduleLocation = truckToPass.truckSchedule.scheduleLocation;
//    NSLog(@"\n"
//          "Shared Truck info is:"
//          "\n   name: %@"
//          "\n   blub: %@"
//          "\n   schedule start: %@"
//          "\n   schedule end: %@"
//          "\n   schedule location: %@",
//          selectedTruck->truckName, selectedTruck->truckBlurb, selectedTruck->truckSchedule.scheduleStartTime, selectedTruck->truckSchedule.scheduleEndTime, selectedTruck->truckSchedule.scheduleLocation);
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{ }

@end
