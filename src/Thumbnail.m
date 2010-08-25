//
//  Thumbnail.m
//  PicSync
//
//  Created by skram on 8/19/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Thumbnail.h"


@implementation Thumbnail



@synthesize imageView;



-(id)init {
	
	
	
	if (self = [super init])
	{

		imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 35, 22)];
		imageView.contentMode = UIViewContentModeScaleAspectFill;
	
		
	}
	
	
	return self;
	
	
}

-(void)setImage:(UIImage*)image {
	
	

	imageView.image = image;//[UIImage imageWithImage:image scaledToSize:CGSizeMake(140, 88)];
	[self addSubview:imageView];

	
}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	
	
    if(self.superview) 
		[self.superview touchesMoved:touches withEvent:event];

	
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	
	if(self.superview)
		[self.superview touchesBegan:touches withEvent:event];
	
	/*
    if(self.superview)
		[self.superview touchesBegan:touches withEvent:event];
	*/
	
	
	//NSLog(@"%d", self.tag);

	/*
	[UIView beginAnimations:@"growMonster" context:NULL];
    [UIView setAnimationDuration:0.1];
	imageView.transform = CGAffineTransformMakeScale(1.5, 1.5);
	self.transform = CGAffineTransformMakeScale(1.5, 1.5);
	[UIView setAnimationDelegate:self];
	*/
	/*
	CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0* 1 * 1 ];
    rotationAnimation.duration = 0.5;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = 1.0; 
    rotationAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    [menuView.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
	*/
	
	//[UIView commitAnimations];
	
	
	
}

-(void)dealloc {
	
	[imageView release];
	imageView = nil;
	
	
	
	[super dealloc];
}

@end
