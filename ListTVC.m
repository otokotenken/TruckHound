//
//  ListTVC.m
//  TruckHound
//
//  Created by DetroitLabs on 6/8/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ListTVC.h"
#import "AboutViewController.h"

@interface ListTVC ()

@end

@implementation ListTVC

NSArray *truckArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    //[[chores alloc]init];
    //[chores initWithObjects: @"chore 1", @"chore 2", @"chore 3" nil];
    //chores = @();
    
    Truck *truck1 = [[Chore alloc]initChore:@"take out trash" :@"collect from all recepticles in the house and take to curb" :FALSE];
    
    Truck *truck2 = [[Chore alloc]initChore:@"cut grass" :@"mow, collect clippings and weed-whip" :FALSE];
    
    Truck *truck3 = [[Chore alloc]initChore:@"clean room" :@"change sheets, make bed, vacuum, put away clothes and bring laundry downstairs" :FALSE];
    
    truckArray = [[NSArray alloc]initWithObjects: truck1,truck2, truck3, nil];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return choreArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    int i = indexPath.row;
    
    Chore *currentChore = choreArray[i];
    
    NSString *nameString = currentChore.name;
    
    // Configure the cell...
    
    //NSLog(@"current name is %@", nameString);
    cell.textLabel.text = nameString;
    return cell;
}

- (IBAction)myUnwindAction:(UIStoryboardSegue*)unwindSegue
{
    NSLog(@"unwind is being called!");
}

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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSLog(@"%ld",(long)indexPath.row);
    DetailVC *detailVC = segue.destinationViewController;
    
    Chore *choreToPass = choreArray[indexPath.row];
    detailVC.chorePassed = choreToPass;
}


@end

@end
