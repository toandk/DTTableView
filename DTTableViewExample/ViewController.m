//
//  ViewController.m
//
//  Created by ToanDK on 4/24/15.
//  Copyright (c) 2015 ToanDK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* Init table header view by using image or image from url*/
    DTHeaderView *headerView = [[DTHeaderView alloc] initWithFrame:CGRectMake(0, 0, 320, 200) withImage:[UIImage imageNamed:@"girl.jpg"] withTabBar:tabbar];
    
//    DTHeaderView *headerView = [[DTHeaderView alloc] initWithFrame:CGRectMake(0, 0, 320, 200) withImageUrl:@"http://s3.favim.com/orig/47/colorful-fun-girl-night-ocean-Favim.com-437603.jpg" withTabBar:tabbar];
    
    [_tableView setDTHeaderView:headerView];
    _tableView.showShadow = NO;
    
    [_tableView reloadData];
}

#pragma mark UITableView delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"cell %d", (int)indexPath.row];
    return cell;
}

@end
