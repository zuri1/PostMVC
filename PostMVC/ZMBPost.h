//
//  ZMBPost.h
//  PostMVC
//
//  Created by Zuri Biringer on 10/22/13.
//  Copyright (c) 2013 Zuri Biringer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZMBPost : NSObject

@property (nonatomic) NSString *userName;
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *content;
@property (nonatomic) NSDate *timeStamp;
@property (nonatomic) UIColor *color;

- (id)initWithUserName:(NSString *)aUserName
                 title:(NSString *)aTitle
               content:(NSString *)aContent
             timeStamp:(NSString *)aTimeStamp
                 color:(UIColor *)aColor;
@end