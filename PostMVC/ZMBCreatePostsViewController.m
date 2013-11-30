//
//  ZMBCreatePostsViewController.m
//  PostMVC
//
//  Created by Zuri Biringer on 10/30/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import "ZMBCreatePostsViewController.h"
#import "ZMBPost.h"
#import "ZMBPostsTableViewController.h"

@interface ZMBCreatePostsViewController ()

- (IBAction)goBackToTableViewController:(id)sender;
@property (nonatomic, weak) IBOutlet UITextField *titleField;
@property (nonatomic, weak) IBOutlet UITextField *contentField;
@property (nonatomic, weak) IBOutlet UITextField *userNameField;
@property (nonatomic, weak) IBOutlet UITextField *timeStampField;

@end

@implementation ZMBCreatePostsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    // If you had a property, you could do this...
    // _post = [ZMBPost new];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goBackToTableViewController:(id)sender
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:^{

        ZMBPost *post = [ZMBPost new];
        [post setTitle:_titleField.text];
        [post setUserName:_userNameField.text];
        [post setContent:_contentField.text];
        [post setColor:[UIColor setRandomColor]];
        [self.delegate postWasCreated:post];
    }];
}


@end
