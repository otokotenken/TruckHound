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
    UIImage *image = [UIImage imageNamed: @"dogChasing.JPG"];
    UIImageView *imageview = [[UIImageView alloc] initWithImage: image];
    
    // set the text view to the image view
    self.navigationItem.titleView = imageview;
    [[[[self.tabBarController tabBar]items]objectAtIndex:1]setEnabled:FALSE];
    [[[[self.tabBarController tabBar]items]objectAtIndex:2]setEnabled:FALSE];
    [[[[self.tabBarController tabBar]items]objectAtIndex:3]setEnabled:FALSE];

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
    truckSchedule2.scheduleLocation = @"440 Burroughs St, Detroit, MI 48202";
    
    //Vehicle *mustang = [[Vehicle alloc]initWithModelName:@"Mustang" andThumbnailImage:[UIImage imageNamed:@"red_mustang_1.jpg"] andMainImage:[UIImage imageNamed:@"red_mustang_1.jpg"]];
    
    
    Truck *truck1 = [[Truck alloc]initTruckWithName: @"Mac Shack" andTruckBlurb: @"We are a Detroit based food truck specializing in creative Mac n Cheese & French Fries. We launched at Eastern Market Flower Day in May of 2012.  We use fresh, high quality ingredients in all of our recipes to create the ultimate street food experience. We believe that lovingly prepared food warms the soul and brings people together." andTruckImage: [UIImage imageNamed:@"MacShackMenu.JPG"] andTruckSchedule: truckSchedule1];
    Truck *truck2 = [[Truck alloc]initTruckWithName:@"Drifter Coffee" andTruckBlurb:@"We're a mobile coffee shop in Southeast Michigan. From the tiny door of our vintage Serro Scotty trailer to yours, we're serving up quality local coffee and caffeinating the masses." andTruckImage:[UIImage imageNamed: @"DrifterCoffeeMenu.JPG"] andTruckSchedule:truckSchedule2];
    Truck *truck3 = [[Truck alloc]initTruckWithName:@"Norma G's" andTruckBlurb:@"Norma G’s is first & foremost a tribute to my mother & her cooking. Whether the dish was simple or complex, she was able to create a tasty, filling & nutritious meal; all the time. Authentic Caribbean cuisine is a blend of many cultures, as are the Caribbean islands themselves. While the challenge of delivering ALL types of Caribbean foods in a mobile environment may be virtually impossible, the challenge of bringing some of them (tasty, filling & nutritious food) – on a quality level – isn’t at all."andTruckImage:[UIImage imageNamed: @"NormaGs"] andTruckSchedule:truckSchedule1];
    
    Truck *truck4 = [[Truck alloc]initTruckWithName:@"Stockyard" andTruckBlurb:@"Marc Bogoff created Stockyard as a monthly supper club out of a friends loft in Pontiac, Michigan. As the dinners grew in popularity, Stockyard evolved and added a food truck to it's line-up, offering up high quality sandwiches to Metro-Detroiters. Today, Bogoff and his team continue to grow by collaborating with other businesses and chefs." andTruckImage:[UIImage imageNamed:@"Stockyard.JPG"] andTruckSchedule:truckSchedule2];
    Truck *truck5 = [[Truck alloc]initTruckWithName:@"Twisted Mitten" andTruckBlurb:@"Chef Omar Anani of The Twisted Mitten food truck (formerly Qais) serves a halal, farm-to-table menu that features products like products such as The Brinery's sriracha and New Yasmeen Bakery's pitas. Frequent customers recommend the lamb bacon BLT." andTruckImage:[UIImage imageNamed:@"TwistedMittenMenu.JPG"] andTruckSchedule:truckSchedule1];
    
    truckArray = [[NSArray alloc]initWithObjects: truck1,truck2,truck3,truck4,truck5, nil];
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
    [cell setBackgroundColor:[UIColor orangeColor]];
    [cell.textLabel setFont:[UIFont systemFontOfSize:32.0]];
   NSInteger i = indexPath.row;
    
    Truck *currentTruck = truckArray[i];
    
    NSString *nameString = currentTruck.truckName;
    cell.textLabel.text = nameString;
        if (_checkedCell == indexPath) {
            // add checkmark when clicked on
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            //enables the tabs when a cell is clicked on
            [[[[self.tabBarController tabBar]items]objectAtIndex:1]setEnabled:TRUE];
            [[[[self.tabBarController tabBar]items]objectAtIndex:2]setEnabled:TRUE];
            [[[[self.tabBarController tabBar]items]objectAtIndex:3]setEnabled:TRUE];
        } else {
            // no cell selected no checkmark
            cell.accessoryType = UITableViewCellAccessoryNone;
            // disables the tabs if a cell is not selected
//            [[[[self.tabBarController tabBar]items]objectAtIndex:1]setEnabled:FALSE];
//            [[[[self.tabBarController tabBar]items]objectAtIndex:2]setEnabled:FALSE];
//            [[[[self.tabBarController tabBar]items]objectAtIndex:3]setEnabled:FALSE];
        }
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%ld", (long)indexPath.row); // you can see selected row number in your console;
    Truck *truckToPass = truckArray[indexPath.row];
    SharedTruck *selectedTruck = [SharedTruck makeTruck];
    selectedTruck->truckName = truckToPass.truckName;
    selectedTruck->andTruckMenu = truckToPass.truckMenu;
    selectedTruck->andTruckBlurb = truckToPass.truckBlurb;
    selectedTruck->andTruckSchedule.scheduleStartTime = truckToPass.truckSchedule.scheduleStartTime;
    selectedTruck->andTruckSchedule.scheduleEndTime = truckToPass.truckSchedule.scheduleEndTime;
    selectedTruck->andTruckSchedule.scheduleLocation = truckToPass.truckSchedule.scheduleLocation;

    _checkedCell = indexPath;
    [tableView reloadData];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{ }

@end
