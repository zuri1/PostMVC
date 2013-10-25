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
    post2.userName = @"AnthonySlopkins";
    post2.title = @"War & Please";
    post2.content = @"I really loved playing Pierre";
    post2.timeStamp = [NSDate date];
    
    ZMBPost *post3 = [[ZMBPost alloc] init];
    post3.userName = @"BillYates";
    post3.title = @"Whereforetran";
    post3.content = @"I noticed lonely bytes, roaming freely...";
    post3.timeStamp = [NSDate date];
    
    ZMBPost *post4 = [[ZMBPost alloc] init];
    post4.userName = @"RickyRoss";
    post4.title = @"Weight loss";
    post4.content = @"I'm tryin out this new paleo thing lol";
    post4.timeStamp = [NSDate date];
    
    ZMBPost *post5 = [[ZMBPost alloc] init];
    post5.userName = @"GucciMane";
    post5.title = @"My Chain";
    post5.content = @"I bought a chain today";
    post5.timeStamp = [NSDate date];
    
    ZMBPost *post6 = [[ZMBPost alloc] init];
    post6.userName = @"BarackOBrama";
    post6.title = @"Barack O's Tacos";
    post6.content = @"Taste the change.";
    post6.timeStamp = [NSDate date];
    
    ZMBPost *post7 = [[ZMBPost alloc] init];
    post7.userName = @"Sterv Jerbs";
    post7.title = @"What heaven is like";
    post7.content = @"Insanely great (lulz!)";
    post7.timeStamp = [NSDate date];
    
    ZMBPost *post8 = [[ZMBPost alloc] init];
    post8.userName = @"Buddha";
    post8.title = @"Wisdom";
    post8.content = @"There is no tension for those who have completed their journey";
    post8.timeStamp = [NSDate date];
    
    ZMBPost *post9 = [[ZMBPost alloc] init];
    post9.userName = @"MikeFoley";
    post9.title = @"DreamCatcher";
    post9.content = @"I almost made it";
    post9.timeStamp = [NSDate date];
    
    ZMBPost *post10 = [[ZMBPost alloc] init];
    post10.userName = @"Heather";
    post10.title = @"Vitamix";
    post10.content = @"I lost my vitamix, has anyone seen it?";
    post10.timeStamp = [NSDate date];
    
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
