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
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
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
    // Dispose of any resources that can be recreated.
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
    
    // Configure the cell...
    cell.textLabel.text = nameString;
    return cell;
}
//
//- (IBAction)myUnwindAction:(UIStoryboardSegue*)unwindSegue
//{
//    NSLog(@"unwind is being called!");
//}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */
//-(BOOL)searchDisplayController:(UISearchController *)controller
//shouldReloadTableForSearchString:(NSString *)searchString
//{
//    [self filterContentForSearchText:searchString
//                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
//                                      objectAtIndex:[self.searchDisplayController.searchBar
//                                                     selectedScopeButtonIndex]]];
//    
//    return YES;
//}
//
//- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
//{
//    NSPredicate *resultPredicate = [NSPredicate
//                                    predicateWithFormat:@"SELF contains[cd] %@",
//                                    searchText];
//    
//    truckSearchResults = [truckArray filteredArrayUsingPredicate:resultPredicate];
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%d", indexPath.row); // you can see selected row number in your console;
    
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
{
    //NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    //Truck *truckToPass = truckArray[indexPath.row];
    //AboutViewController *aboutVC = segue.destinationViewController;
    //aboutVC.truckPassed = truckToPass;
}

@end
