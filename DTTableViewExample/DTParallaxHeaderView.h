//
//  DTHeaderView.h
//
//  Created by ToanDK on 4/24/15.
//  Copyright (c) 2015 ToanDK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DTParallaxHeaderView : UIView {

}

@property (nonatomic, assign) NSString *imageUrl;
@property (nonatomic, assign) UIImage *bgImage;
@property (nonatomic, strong) UIView *tabBarView;


-(id)initWithFrame:(CGRect)frame withImage:(UIImage*)image withTabBar:(UIView*)tabbar;

-(id)initWithFrame:(CGRect)frame withImageUrl:(NSString*)url withTabBar:(UIView*)tabbar;

@end
