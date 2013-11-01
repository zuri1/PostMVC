//
//  ZMBEditPostsViewController.m
//  PostMVC
//
//  Created by Zuri Biringer on 10/27/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import "ZMBEditPostsViewController.h"
#import "ZMBPost.h"
#import "ZMBPostTableViewCell.h"
#import "ZMBPostsTableViewController.h"


@interface ZMBEditPostsViewController ()

- (IBAction)goBackToTableViewController:(id)sender;

@property (nonatomic, weak) IBOutlet UITextField *titleField;
@end

@implementation ZMBEditPostsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewWillAppear:(BOOL)animated
{

}

- (void)didReceiveMemoryWarning
{

}

- (IBAction)goBackToTableViewController:(id)sender
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:^{
        [self savePost];
        [self.delegate postWasEdited:_post];        
    }];
}

- (void)savePost
{
    [_post setTitle:_titleField.text];
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

@end
