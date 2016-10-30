//
//  ScaryBugData.m
//  ScrayBugsMac
//
//  Created by Alexcai on 2016/10/29.
//  Copyright © 2016年 codeMaster. All rights reserved.
//

#import "ScaryBugData.h"

@implementation ScaryBugData

- (instancetype)initWithTitle:(NSString *)title rating:(float)rating{
    if (self = [super init]) {
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
