//
//  MPSlideBarAppDelegate.h
//  MPSlideBar
//
//  Created by skram on 8/24/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MPSlideBarViewController;

@interface MPSlideBarAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MPSlideBarViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MPSlideBarViewController *viewController;

@end

