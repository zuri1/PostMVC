//
//  ZMBCreatePostsViewController.h
//  PostMVC
//
//  Created by Zuri Biringer on 10/30/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZMBPost.h"

@protocol ZMBCreatePostsViewControllerDelegate <NSObject>

- (void)postWasCreated:(ZMBPost *) post;

@end

@interface ZMBCreatePostsViewController : UIViewController

@property (nonatomic, weak) id<ZMBCreatePostsViewControllerDelegate> delegate;

@end