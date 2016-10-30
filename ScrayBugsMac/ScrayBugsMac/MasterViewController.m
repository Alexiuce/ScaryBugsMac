//
//  MasterViewController.m
//  ScrayBugsMac
//
//  Created by Alexcai on 2016/10/29.
//  Copyright © 2016年 codeMaster. All rights reserved.
//

#import "MasterViewController.h"

#import "ScaryBugsDoc.h"
#import "ScaryBugData.h"


@interface MasterViewController ()<NSTableViewDataSource,NSTableViewDelegate>

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}
// 这个方法返回列表的行数 : 类似于iOS中的numberOfRowsInSection:
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return self.bugs.count;
}
// 这个方法返回列表的cell ：参考iOS中的 cellForRowAtIndexPath:
- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    // 1.创建可重用的cell:
    NSTableCellView *cellView = [tableView makeViewWithIdentifier:tableColumn.identifier owner:self];
    // 2. 根据重用标识，设置cell 数据
    if( [tableColumn.identifier isEqualToString:@"BugColumn"] )
    {
        ScaryBugsDoc *bugDoc = [self.bugs objectAtIndex:row];
        cellView.imageView.image = bugDoc.thumbImage;
        cellView.textField.stringValue = bugDoc.data.title;
        return cellView;
    }
    return cellView;
}
@end
