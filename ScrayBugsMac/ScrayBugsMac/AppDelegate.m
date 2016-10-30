//
//  AppDelegate.m
//  ScrayBugsMac
//
//  Created by Alexcai on 2016/10/29.
//  Copyright © 2016年 codeMaster. All rights reserved.
//

#import "AppDelegate.h"

#import "MasterViewController.h"

#import "ScaryBugsDoc.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@property (nonatomic, strong) IBOutlet MasterViewController *masterViewController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // 1. 创建 master View Controller（通过加载xib方式）
    self.masterViewController = [[MasterViewController alloc]initWithNibName:@"MasterViewController" bundle:nil];
    
    ScaryBugsDoc *bug1 = [[ScaryBugsDoc alloc] initWithTitle:@"Potato Bug" rating:4 thumbImage:[NSImage imageNamed:@"potatoBugThumb.jpg"] fullImage:[NSImage imageNamed:@"potatoBug.jpg"]];
    ScaryBugsDoc *bug2 = [[ScaryBugsDoc alloc] initWithTitle:@"House Centipede" rating:3 thumbImage:[NSImage imageNamed:@"centipedeThumb.jpg"] fullImage:[NSImage imageNamed:@"centipede.jpg"]];
    ScaryBugsDoc *bug3 = [[ScaryBugsDoc alloc] initWithTitle:@"Wolf Spider" rating:5 thumbImage:[NSImage imageNamed:@"wolfSpiderThumb.jpg"] fullImage:[NSImage imageNamed:@"wolfSpider.jpg"]];
    ScaryBugsDoc *bug4 = [[ScaryBugsDoc alloc] initWithTitle:@"Lady Bug" rating:1 thumbImage:[NSImage imageNamed:@"ladybugThumb.jpg"] fullImage:[NSImage imageNamed:@"ladybug.jpg"]];
    NSMutableArray *bugs = [NSMutableArray arrayWithObjects:bug1, bug2, bug3, bug4, nil];
    self.masterViewController.bugs = bugs;
    // 2. 将Controller的view 添加到window的content view 中
    [self.window.contentView addSubview:self.masterViewController.view];
    // 3. 设置Controller的view的尺寸等于窗口的尺寸
    self.masterViewController.view.frame = self.window.contentView.bounds;

}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
