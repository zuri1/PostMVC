//
//  ZMBPost.m
//  PostMVC
//
//  Created by Zuri Biringer on 10/22/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import "ZMBPost.h"

@implementation ZMBPost

- (id)init
{
    self = [super init];
    return self;
}

- (id)initWithUserName:(NSString *)aUserName
                 title:(NSString *)aTitle
               content:(NSString *)aContent
             timeStamp:(NSDate *)aTimeStamp {
    self = [super init];
    if(self) {
        self.userName = aUserName;
        self.title = aTitle;
        self.content = aContent;
        self.timeStamp = aTimeStamp;
    }
    return self;
}

@end
