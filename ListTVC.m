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
    truckSchedule1.scheduleLocation = @"Tech Town -440 Burroughs St, Detroit, MI 48202";
    
    TruckSchedule *truckSchedule2 = [[TruckSchedule alloc] init];;
    truckSchedule2.scheduleStartTime = [NSDate date];
    truckSchedule2.scheduleEndTime = [NSDate date];
    truckSchedule2.scheduleLocation = @"440 Burroughs St, Detroit, MI 48202";
    
    //Vehicle *mustang = [[Vehicle alloc]initWithModelName:@"Mustang" andThumbnailImage:[UIImage imageNamed:@"red_mustang_1.jpg"] andMainImage:[UIImage imageNamed:@"red_mustang_1.jpg"]];
    
    
    Truck *truck1 = [[Truck alloc]initTruckWithName: @"Mac Shack" andTruckBlurb: @"We are a Detroit based food truck specializing in creative Mac n Cheese & French Fries. We launched at Eastern Market Flower Day in May of 2012.  We use fresh, high quality ingredients in all of our recipes to create the ultimate street food experience. We believe that lovingly prepared food warms the soul and brings people together." andTruckImage: [UIImage imageNamed:@"MacShackMenu.JPG"] andTruckSchedule: truckSchedule1];
    Truck *truck2 = [[Truck alloc]initTruckWithName:@"Drifter Coffee" andTruckBlurb:@"We're a mobile coffee shop in Southeast Michigan. From the tiny door of our vintage Serro Scotty trailer to yours, we're serving up quality local coffee and caffeinating the masses." andTruckImage:[UIImage imageNamed: @"DrifterCoffeeMenu.JPG"] andTruckSchedule:truckSchedule1];
    Truck *truck3 = [[Truck alloc]initTruckWithName:@"Norma G's" andTruckBlurb:@"Norma G’s is first & foremost a tribute to my mother & her cooking. Whether the dish was simple or complex, she was able to create a tasty, filling & nutritious meal; all the time. Authentic Caribbean cuisine is a blend of many cultures, as are the Caribbean islands themselves. While the challenge of delivering ALL types of Caribbean foods in a mobile environment may be virtually impossible, the challenge of bringing some of them (tasty, filling & nutritious food) – on a quality level – isn’t at all."andTruckImage:[UIImage imageNamed: @"NormaGs"] andTruckSchedule:truckSchedule1];
    
    Truck *truck4 = [[Truck alloc]initTruckWithName:@"Stockyard" andTruckBlurb:@"Marc Bogoff created Stockyard as a monthly supper club out of a friends loft in Pontiac, Michigan. As the dinners grew in popularity, Stockyard evolved and added a food truck to it's line-up, offering up high quality sandwiches to Metro-Detroiters. Today, Bogoff and his team continue to grow by collaborating with other businesses and chefs." andTruckImage:[UIImage imageNamed:@"Stockyard.JPG"] andTruckSchedule:truckSchedule1];
    Truck *truck5 = [[Truck alloc]initTruckWithName:@"Twisted Mitten" andTruckBlurb:@"Chef Omar Anani of The Twisted Mitten food truck (formerly Qais) serves a halal, farm-to-table menu that features products like products such as The Brinery's sriracha and New Yasmeen Bakery's pitas. Frequent customers recommend the lamb bacon BLT." andTruckImage:[UIImage imageNamed:@"TwistedMittenMenu.JPG"] andTruckSchedule:truckSchedule1];
    Truck *truck6 = [[Truck alloc]initTruckWithName:@"Hero Or Villan" andTruckBlurb:@"Bring your hunger to justice at this comic book-themed truck. Find classic combinations on the 'Hero' menu and unexpected flavors on the villain side. For vegetarians, the Captain Planet is a great option with sautéed portabella mushrooms, caramelized onions, roasted red pepper, mozzarella, and pesto aioli on a hoagie." andTruckImage:[UIImage imageNamed: @"HeroOrVillanMenu.JPG"] andTruckSchedule:truckSchedule1];
    Truck *truck7 = [[Truck alloc]initTruckWithName:@"Concrete Cuisine" andTruckBlurb:@"A regular at Downtown Street Eats, Concrete Cuisine doesn't ascribe to any specific taste, just super fresh food. The Mediterranean nachos — pita chips topped with roasted bell pepper hummus, falafel, tabbouleh, tahini, and cheese sauce — are a fan favorite." andTruckImage:[UIImage imageNamed: @"ConcreteMenu.JPG"] andTruckSchedule:truckSchedule1];
    Truck *truck8 = [[Truck alloc]initTruckWithName:@"Detroit 75 Kitchen" andTruckBlurb:@"Modern artisan sandwiches are no longer tied to the sit down dining experience. Detroit 75 kitchen is changing the way fresh, high-quality ingredients and unique flavors are brought together. Try one of the delectable items from the Detroit 75 menu, and you will be won over with every bite." andTruckImage:[UIImage imageNamed:@"Detroit.JPG"] andTruckSchedule:truckSchedule1];
    Truck *truck9 = [[Truck alloc]initTruckWithName:@"Rogue Estate BBQ" andTruckBlurb:@"RE BBQ began in 2009 on a tiny backyard smoker, serving pulled pork at a summer festival. As word got out, more requests for RE BBQ started coming in, so my father and I designed and built THE BEAST at his machine shop. Since then, RE BBQ has fed weddings, bike races, VA hospitals and other events around Michigan. In 2014, I traded in my 20 year I.T. career for a much more enjoyable life of cooking and serving delicious food that makes people happy." andTruckImage:[UIImage imageNamed:@"rebbq.JPG"] andTruckSchedule:truckSchedule1];
    Truck *truck10 = [[Truck alloc]initTruckWithName:@"What Up Dough" andTruckBlurb:@"SMALL BATCH, HANDMADE, HAND SCOOPED FROZEN COOKIE DOUGH, AND ICE CREAM SANDWICHES FROM DETROIT. What Up Dough was created in 2006. One particularly broke Christmas, artist Kathy Leisen convinced her friend/landlord Mary Beth Carolan to bake gift cookies with her. Call it a collaboration because MB was insistent that nobody wants more cookies at Christmas and BAM! Bake at home cookie dough was conceived. Before Nestle there was What Up Dough." andTruckImage:[UIImage imageNamed:@"whatDough"] andTruckSchedule:truckSchedule1];
    Truck *truck11 = [[Truck alloc]initTruckWithName:@"Ricewood" andTruckBlurb:@"two brothers, a gal, and a smoker wood barbecue rice bowls. Ann Arbors new Pacific island-style barbecue trailer features rice bowls topped slow roasted meat, spicy, salty finadene sauce, and a side of cucumber salad. Find them parked next to Mogan & York Monday through Friday from noon until sold out." andTruckImage:[UIImage imageNamed:@"ricewood.JPG"] andTruckSchedule:truckSchedule1];
    Truck *truck12 = [[Truck alloc]initTruckWithName:@"Shimmy Shack" andTruckBlurb:@"Here at Shimmy Shack, we’re not the kind of vegetarians you think we are. We aim to dispel the myths that veggie food is bland and boring. We want to show that veg food tastes, looks and smells awesome! We are not out to convert everyone to be vegetarians but we are out to encourage people to try to increase their intake of fruits and veggies a little bit every day. And for those of you who ARE vegetarians or vegans, we really really really hope you come to Shimmy Shack when you’re craving a little something naughty – a  burger, fries and a shake or maybe some nachos!" andTruckImage:[UIImage imageNamed: @"shimmyShack.JPG"] andTruckSchedule:truckSchedule1];
    Truck *truck13 = [[Truck alloc]initTruckWithName:@"Smokey Rhodes BBQ" andTruckBlurb:@"We are a food truck and have a carry out restaurant/ice cream shop. Sometimes we have to have close our shop to be on the road so feel free to call ahead" andTruckImage:[UIImage imageNamed:@"SmokeyMenu.JPG"] andTruckSchedule:truckSchedule1];
    Truck *truck14 = [[Truck alloc]initTruckWithName:@"Buffy's Mexi-Casian Grill" andTruckBlurb:@"Hello Foody! We have traveled countless miles. Buffy’s Mexi-Casian Grill is a Mexican-American food truck. We’ve been in business since early 2013. Check out our great eats, from nacho fries to burgers and chimichangas!" andTruckImage:[UIImage imageNamed: @"Buffy.JPG"] andTruckSchedule:truckSchedule1];
    Truck *truck15 = [[Truck alloc]initTruckWithName:@"Chick A Dee" andTruckBlurb:@"Chick a Dee is Metro Detroit’s latest roving dining experience. Serving our signature hand battered Chicken on a Stick, and Chicken Tenders guaranteed to blow you away! Don’t miss the Hand Dipped Chicken Corn Dogs so so GOOD. Add one of our Awesome sides Sweet Potato Fries, Deep Fried Mac and Cheese, Homemade Waffles, and Fries. Complete your meal with a refreshing Fresh Squeezed Lemonade, Limeade, or Cherryade" andTruckImage:[UIImage imageNamed: @"DeeMenu.JPG"] andTruckSchedule:truckSchedule1];
    
    truckArray = [[NSArray alloc]initWithObjects: truck1,truck2,truck3,truck4,truck5,truck6,truck7,truck8,truck9,truck10,truck11,truck12,truck13,truck14,truck15, nil];
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
    [cell.textLabel setFont:[UIFont systemFontOfSize:26.0]];
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
