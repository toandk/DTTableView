# DTParallaxTableView
 Custom tableview which support parallax header

![](https://raw.githubusercontent.com/toandk/DTTableView/master/DTTableView.gif?raw=true)

## Requirements
iOS 6.0

## Installation

####[CocoaPods](http://cocoapods.org)
Coming soon.

####Manual Installation

Unzip example project and add 5 files to your project:
	
	DTParallaxTableView.h
	DTParallaxTableView.m
	DTParallaxHeaderView.h
	DTParallaxHeaderView.m
	DTParallaxTableViewConstants.h
	
Add [SDWebImage](https://github.com/rs/SDWebImage) framework to your project
	
## Usage

First create a DTParallaxTableView from code or drag a tableview in xib file and assign it's class to DTParallaxTableView:
	
	DTParallaxTableView *_tableView = [[DTParallaxTableView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
	


Next, we need to create a table header view from an UIImage and a tab bar (pass nil if you don't want to use tabbar):
	
	DTParallaxHeaderView *headerView = [[DTParallaxHeaderView alloc] initWithFrame:CGRectMake(0, 0, 320, 200) withImage:[UIImage imageNamed:@"girl.jpg"] withTabBar:tabbar];
	
Or init with an image url:

	DTParallaxHeaderView *headerView = [[DTParallaxHeaderView alloc] initWithFrame:CGRectMake(0, 0, 320, 200) withImageUrl:@"your-custom-image-url-here" withTabBar:tabbar];
	
Then you can set this view to a DTParallaxTableView's header as shown bellow.
	
	[_tableView setDTHeaderView:headerView];
	
### Note

In this examle, SDWebImage was used to display image from an url. You can modify it by yourself using your own image cache manager such as AFNetworking...

### Author

ToanDK, dkt204@gmail.com

Feel free to copy and modify this source code. Please let me know if you have any question!


