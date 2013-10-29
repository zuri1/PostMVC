//
//  ZMBEditPostsViewController.h
//  PostMVC
//
//  Created by Zuri Biringer on 10/27/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZMBPost.h"

@protocol ZMBEditPostsViewControllerDelegate <NSObject>

- (void)postWasEdited:(ZMBPost *) post;

@end

@interface ZMBEditPostsViewController : UIViewController

@property (nonatomic, weak) id<ZMBEditPostsViewControllerDelegate> delegate;
@property (nonatomic, weak) ZMBPost *post;

@end