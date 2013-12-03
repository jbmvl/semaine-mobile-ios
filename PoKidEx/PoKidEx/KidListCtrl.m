//
//  KidListCtrl.m
//  PoKidEx
//
//  Created by Jean-Michel Didon on 03/12/2013.
//  Copyright (c) 2013 HETIC. All rights reserved.
//

#import "KidListCtrl.h"
#import "Kid.h"
#import "AddKidCtrl.h"

@interface KidListCtrl ()

// Creating the Array that will contain the list of Kids
@property NSMutableArray *kidList;

@end



@implementation KidListCtrl


// Action trigerred when tapping button "Done" of "Cancel" of the AddKidCtrl
// ==> Go back to the Kid List
-(IBAction)backToKidList:(UIStoryboardSegue *)segue
{
    // Get the source of the segue's call (e.g : Cancel or Done)
    AddKidCtrl *source = [segue sourceViewController];
    Kid *kid = source.kid;
    
    // If we receive a kid, we add it to the view
    if(kid != nil)
    {
        [self.kidList addObject:kid];
        [self.tableView reloadData];
    }
}

-(void)loadKidsData
{
    // Mock of kids, we need to search for this data later
    Kid *firstKid = [[Kid alloc] init];
    firstKid.firstName = @"MyName";
    firstKid.lastName = @"MySurname";
    firstKid.age = @"666";
    
    Kid *secondKid = [[Kid alloc] init];
    secondKid.firstName = @"Second";
    secondKid.lastName = @"Name";
    secondKid.age = @"456";
    
    [self.kidList addObject:firstKid];
    [self.kidList addObject:secondKid];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Show the kidList when we call this Controller. Then we load the data.
    self.kidList = [[NSMutableArray alloc] init];
    [self loadKidsData];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.kidList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ListPrototypeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    Kid *kid = [self.kidList objectAtIndex:indexPath.row];
    cell.textLabel.text = kid.firstName;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

#pragma mark - KidListCtrl : Table view Delegate

/*- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Kid *tappedItem = [self.kidList objectAtIndex:indexPath.row];
    tappedItem.completed = !tappedItem.completed;
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
}*/

@end
