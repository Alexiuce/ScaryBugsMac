//
//  ScrayBugDoc.m
//  ScrayBugsMac
//
//  Created by Alexcai on 2016/10/29.
//  Copyright © 2016年 codeMaster. All rights reserved.
//

#import "ScaryBugsDoc.h"
#import "ScaryBugData.h"

@implementation ScaryBugsDoc

- (instancetype)initWithTitle:(NSString *)title rating:(float)rating thumbImage:(NSImage *)thumbImage fullImage:(NSImage *)fullImage{
    if (self = [super init]) {
        self.data = [[ScaryBugData alloc]initWithTitle:title rating:rating];
        self.thumbImage = thumbImage;
        self.fullImage = fullImage;
    }
    return self;
}

@end
