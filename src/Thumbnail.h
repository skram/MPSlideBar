//
//  Thumbnail.h
//  PicSync
//
//  Created by skram on 8/19/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Thumbnail : UIView {
	
	
	UIImageView *imageView;
	

}
-(void)setImage:(UIImage*)image;

@property(nonatomic,retain) UIImageView *imageView;
@end
