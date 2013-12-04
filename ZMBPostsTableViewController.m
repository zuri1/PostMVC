//
//  ZMBPostsTableViewController.m
//  PostMVC
//
//  Created by Zuri Biringer on 10/23/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import "ZMBPostsTableViewController.h"
#import "ZMBPost.h"
#import "ZMBPostTableViewCell.h"
#import "ZMBEditPostsViewController.h"
#import "ZMBCreatePostsViewController.h"


@interface ZMBPostsTableViewController () <ZMBEditPostsViewControllerDelegate, ZMBCreatePostsViewControllerDelegate, UINavigationControllerDelegate>

@end

@implementation ZMBPostsTableViewController

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
    
    NSString *docsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    docsPath = [docsPath stringByAppendingPathComponent:@"Posts.plist"];
    NSFileManager *fileManager = [[NSFileManager alloc] init];
    NSString *plistPath;
    
    if ([fileManager fileExistsAtPath:docsPath]) {
        plistPath = docsPath;
    } else {
        plistPath = [[NSBundle mainBundle] pathForResource:@"Posts" ofType:@"plist"];
    }
    
    NSData *postsData = [NSData dataWithContentsOfFile:plistPath];
    //NSLog(@"Posts Data: %@", postsData);

    _posts = [NSKeyedUnarchiver unarchiveObjectWithData:postsData];
    //NSLog(@"Posts: %@", _posts);

    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
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
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _posts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    ZMBPostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.userName.text = [_posts[indexPath.row] userName];
    cell.content.text = [_posts[indexPath.row] content];
    cell.title.text = [_posts[indexPath.row] title];
    cell.contentView.backgroundColor = [_posts[indexPath.row] color];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    
    NSDate *date = [_posts[indexPath.row] timeStamp];
    
    NSString *formattedDateString = [dateFormatter stringFromDate:date];
    
    cell.timeStamp.text = formattedDateString;
    
//    cell.backgroundColor = [UIColor setRandomColor];
    
    return cell;
}

#pragma mark - swipe to delete
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_posts removeObjectAtIndex:indexPath.row];
        [tableView beginUpdates];
        [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [tableView endUpdates];
        [self.tableView reloadData];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"editPostsSegue"])
    {
        ZMBEditPostsViewController *editVC = (ZMBEditPostsViewController *)segue.destinationViewController;
        editVC.delegate = self;
        editVC.post = _posts[[self.tableView indexPathForSelectedRow].row];
        
//        NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
//        NSInteger selectedRow = [selectedIndexPath row];
//        [_posts objectAtIndex: selectedRow];
    }
    if ([segue.identifier isEqualToString:@"createPostsSegue"])
    {
        ZMBCreatePostsViewController *createVC = (ZMBCreatePostsViewController *)segue.destinationViewController;
        createVC.delegate = self;
        }
}

- (void)postWasEdited:(ZMBPost *)post{
    NSString *docsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    docsPath = [docsPath stringByAppendingPathComponent:@"Posts.plist"];
    [NSKeyedArchiver archiveRootObject:_posts toFile:docsPath];
    [self.tableView reloadData];
    NSLog(@"post was edite happened");
}

- (void)postWasCreated:(ZMBPost *)post{
    [_posts addObject:post];
    NSString *docsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    docsPath = [docsPath stringByAppendingPathComponent:@"Posts.plist"];
    [NSKeyedArchiver archiveRootObject:_posts toFile:docsPath];
    [self.tableView reloadData];
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
