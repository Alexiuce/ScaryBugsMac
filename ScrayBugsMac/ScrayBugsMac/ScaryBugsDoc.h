//
//  ScrayBugDoc.h
//  ScrayBugsMac
//
//  Created by Alexcai on 2016/10/29.
//  Copyright © 2016年 codeMaster. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ScaryBugData;

@interface ScaryBugsDoc : NSObject

@property (nonatomic, strong) ScaryBugData *data;
@property (nonatomic, strong) NSImage *thumbImage;         // 缩略图
@property (nonatomic, strong) NSImage *fullImage;                // 全尺寸图


- (instancetype)initWithTitle:(NSString *)title rating:(float)rating thumbImage:(NSImage *)thumbImage fullImage:(NSImage *)fullImage;

@end
