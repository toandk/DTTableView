//
//  DTHeaderView.m
//
//  Created by ToanDK on 4/24/15.
//  Copyright (c) 2015 ToanDK. All rights reserved.
//

#import "DTParallaxHeaderView.h"

@implementation DTParallaxHeaderView

-(id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame withImage:(UIImage*)image withTabBar:(UIView*)tabbar {
    if (self = [super initWithFrame:frame]) {
        _bgImage = image;
        _tabBarView = tabbar;
        _tabBarView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleWidth;
        self.backgroundColor = [UIColor clearColor];
        
        tabbar.frame = CGRectMake(0, self.frame.size.height - tabbar.frame.size.height, self.frame.size.width, tabbar.frame.size.height);
        [self addSubview:tabbar];
        self.clipsToBounds = YES;
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame withImageUrl:(NSString*)url withTabBar:(UIView*)tabbar {
    if (self = [super initWithFrame:frame]) {
        _imageUrl = url;
        _tabBarView = tabbar;
        _tabBarView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleWidth;
        self.backgroundColor = [UIColor clearColor];
        
        tabbar.frame = CGRectMake(0, self.frame.size.height - tabbar.frame.size.height, self.frame.size.width, tabbar.frame.size.height);
        [self addSubview:tabbar];
        self.clipsToBounds = YES;
    }
    return self;
}

@end
