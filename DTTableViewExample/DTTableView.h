//
//  DTTableView.h
//
//  Created by ToanDK on 4/24/15.
//  Copyright (c) 2015 ToanDK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DTTableViewConstants.h"
#import "DTHeaderView.h"

@interface DTTableView : UITableView {
//    UIImageView *headerImgView, *bgImgView;
    UIView *topBarView, *bgView;
}
@property (nonatomic, assign) BOOL showShadow;

-(void)setDTHeaderView:(DTHeaderView *)tableHeaderView;

@end
