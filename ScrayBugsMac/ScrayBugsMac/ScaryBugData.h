//
//  ScaryBugData.h
//  ScrayBugsMac
//
//  Created by Alexcai on 2016/10/29.
//  Copyright © 2016年 codeMaster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScaryBugData : NSObject

@property (nonatomic, strong) NSString *title;              // bug 的名称
@property (nonatomic, assign) float rating;                    // bug的重要程度


- (instancetype)initWithTitle:(NSString *)title rating:(float)rating;

@end
