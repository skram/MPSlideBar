//
//  MPSlideBarViewController.h
//  MPSlideBar
//
//  Created by skram on 8/24/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>


@class MPSlideBar;
@interface MPSlideBarViewController : UIViewController {
	
	MPSlideBar *slideBarView;
	IBOutlet UIImageView *fullImage;
	IBOutlet UIToolbar *toolBar;

}
@property(nonatomic,retain) MPSlideBar *slideBarView;
@end

