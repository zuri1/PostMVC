//
//  ZMBPostsTableViewController.h
//  PostMVC
//
//  Created by Zuri Biringer on 10/23/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZMBPost.h"
#import "ZMBPostTableViewCell.h"
#import "UIColor+RandomColor.h"

@interface ZMBPostsTableViewController : UITableViewController

@property (nonatomic) NSMutableArray *posts;
@property (nonatomic, retain) UIView *tableHeaderView;

@end
