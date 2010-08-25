//
//  CustomView.h
//  PicSync
//
//  Created by skram on 8/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



#define kAlphaVisibleThreshold (0.1f);

@interface MPSlideBar : UIView {
	
	
	NSMutableArray *full;
	NSMutableArray *thumbs;
	NSUInteger *selectedIndex;
	NSOperationQueue *que;
	int pages;
	

}


-(void)setupView:(NSMutableArray*)array;
@property(nonatomic,retain) NSMutableArray *thumbs;
@property(nonatomic,retain) NSMutableArray *full;

@property(nonatomic,assign) NSUInteger *selectedIndex;
//@property(nonatomic,assign) MPSlideGallery *gallery;

@end
