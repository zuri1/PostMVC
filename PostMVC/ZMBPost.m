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
             timeStamp:(NSDate *)aTimeStamp
                 color:(UIColor *)aColor{
    self = [super init];
    if(self) {
        self.userName = aUserName;
        self.title = aTitle;
        self.content = aContent;
        self.timeStamp = aTimeStamp;
        self.color = aColor;
    }
    return self;
}

#pragma mark - NSCoding

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.userName = [aDecoder decodeObjectForKey:@"userName"];
    self.title = [aDecoder decodeObjectForKey:@"title"];
    self.content = [aDecoder decodeObjectForKey:@"content"];
    self.timeStamp = [aDecoder decodeObjectForKey:@"timeStamp"];
    self.color = [aDecoder decodeObjectForKey:@"color"];
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.userName forKey:@"userName"];
    [aCoder encodeObject:self.title forKey:@"title"];
    [aCoder encodeObject:self.content forKey:@"content"];
    [aCoder encodeObject:self.timeStamp forKey:@"timeStamp"];
    [aCoder encodeObject:self.color forKey:@"color"];
     
}

@end
