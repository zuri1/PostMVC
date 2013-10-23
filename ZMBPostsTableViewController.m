//
//  ZMBPostsTableViewController.m
//  PostMVC
//
//  Created by Zuri Biringer on 10/23/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import "ZMBPostsTableViewController.h"

@interface ZMBPostsTableViewController ()

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

    ZMBPost *post = [[ZMBPost alloc] init];
    post.userName = @"BigThings22";
    post.title = @"Let me tell you about my big things";
    post.content = @"I bought a Tesla today";
    post.timeStamp = [NSDate date];
    
    ZMBPost *post2 = [[ZMBPost alloc] init];
    post.userName = @"BigThings22";
    post.title = @"Let me tell you about my big things";
    post.content = @"I bought a Tesla today";
    post.timeStamp = [NSDate date];
    
    ZMBPost *post3 = [[ZMBPost alloc] init];
    post.userName = @"BigThings22";
    post.title = @"Let me tell you about my big things";
    post.content = @"I bought a Tesla today";
    post.timeStamp = [NSDate date];
    
    ZMBPost *post4 = [[ZMBPost alloc] init];
    post.userName = @"BigThings22";
    post.title = @"Let me tell you about my big things";
    post.content = @"I bought a Tesla today";
    post.timeStamp = [NSDate date];
    
    ZMBPost *post5 = [[ZMBPost alloc] init];
    post.userName = @"BigThings22";
    post.title = @"Let me tell you about my big things";
    post.content = @"I bought a Tesla today";
    post.timeStamp = [NSDate date];
    
    ZMBPost *post6 = [[ZMBPost alloc] init];
    post.userName = @"BigThings22";
    post.title = @"Let me tell you about my big things";
    post.content = @"I bought a Tesla today";
    post.timeStamp = [NSDate date];
    
    ZMBPost *post7 = [[ZMBPost alloc] init];
    post.userName = @"BigThings22";
    post.title = @"Let me tell you about my big things";
    post.content = @"I bought a Tesla today";
    post.timeStamp = [NSDate date];
    
    ZMBPost *post8 = [[ZMBPost alloc] init];
    post.userName = @"BigThings22";
    post.title = @"Let me tell you about my big things";
    post.content = @"I bought a Tesla today";
    post.timeStamp = [NSDate date];
    
    ZMBPost *post9 = [[ZMBPost alloc] init];
    post.userName = @"BigThings22";
    post.title = @"Let me tell you about my big things";
    post.content = @"I bought a Tesla today";
    post.timeStamp = [NSDate date];
    
    ZMBPost *post10 = [[ZMBPost alloc] init];
    post.userName = @"BigThings22";
    post.title = @"Let me tell you about my big things";
    post.content = @"I bought a Tesla today";
    post.timeStamp = [NSDate date];
    
    _posts = [NSMutableArray arrayWithObjects: post, post2, post3, post4, post5, post6, post7, post8, post9, post10, nil];

    
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [_posts[indexPath.row] userName];
    cell.detailTextLabel.text = [_posts[indexPath.row] content];
    
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

@end
