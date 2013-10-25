//
//  ZMBPostTableViewCell.h
//  PostMVC
//
//  Created by Zuri Biringer on 10/22/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZMBPost.h"
#import "ZMBPostsTableViewController.h"

@interface ZMBPostTableViewCell : UITableViewCell

@property (nonatomic) ZMBPost *post;

@property (nonatomic) IBOutlet UILabel *userName;
@property (nonatomic) IBOutlet UILabel *title;
@property (nonatomic) IBOutlet UILabel *content;
@property (nonatomic) IBOutlet UILabel *timeStamp;

@end