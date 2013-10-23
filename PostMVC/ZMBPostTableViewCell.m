//
//  ZMBPostTableViewCell.m
//  PostMVC
//
//  Created by Zuri Biringer on 10/22/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import "ZMBPostTableViewCell.h"
#import "ZMBPost.h"
#import "ZMBPostsTableViewController.h"

@implementation ZMBPostTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
