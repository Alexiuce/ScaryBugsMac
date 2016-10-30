//
//  NSImage+Extras.h
//  SBugsTest1
//
//  Created by Ernesto Garcia Carril on 11/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSImage (Extras)
- (NSImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize;
@end
