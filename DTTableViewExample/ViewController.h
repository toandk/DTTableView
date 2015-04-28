//
//  ViewController.h
//
//  Created by ToanDK on 4/24/15.
//  Copyright (c) 2015 ToanDK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DTTableView.h"

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    __weak IBOutlet DTTableView *_tableView;
    __weak IBOutlet UIView *tabbar;
}

@end
