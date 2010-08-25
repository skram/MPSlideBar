//
//  CustomView.m
//  PicSync
//
//  Created by skram on 8/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MPSlideBar.h"
#import <QuartzCore/QuartzCore.h>
#import "Thumbnail.h"

#define DOCSFOLDER [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"]

@implementation MPSlideBar

@synthesize thumbs;
@synthesize full;
@synthesize selectedIndex;
//@synthesize gallery;

-(id)initWithFrame:(CGRect)frame {
	
	
	if (self = [super initWithFrame:frame])
	{
		thumbs = [[NSMutableArray alloc] init];
		full = [[NSMutableArray alloc] init];
		self.userInteractionEnabled = TRUE;
	}
	
	
	return self;
	
	
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	

	
	UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
	
    for (UIView *piece in [self subviews]) {
		
        CGFloat x_min = piece.center.x - (piece.bounds.size.width / 2);
        CGFloat x_max = x_min + piece.bounds.size.width;
        CGFloat y_min = piece.center.y - (piece.bounds.size.height / 2);
        CGFloat y_max = y_min + piece.bounds.size.height;
        if (point.x > x_min && point.x < x_max && point.y > y_min && point.y < y_max ) {

				NSLog(@"%@", self);
				[self bringSubviewToFront:piece];
				//[mainController showFull:piece.tag];
				[UIView beginAnimations:@"growMonster" context:NULL];
				[UIView setAnimationDuration:0.2];
				piece.transform = CGAffineTransformMakeScale(1.2, 1.2);
				[UIView setAnimationDelegate:self];
				[UIView commitAnimations];
				
							
			
			
        } else {
            //piece.hidden = NO;
			[UIView beginAnimations:@"growMonster" context:NULL];
			[UIView setAnimationDuration:0.2];
			piece.transform = CGAffineTransformMakeScale(1.0, 1.0);
			[UIView setAnimationDelegate:self];
			[UIView commitAnimations];
        }
    }
	
	
}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {

	
	
	UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];

	
    for (UIView *piece in [self subviews]) {
        CGFloat x_min = piece.center.x - (piece.bounds.size.width / 2);
        CGFloat x_max = x_min + piece.bounds.size.width;
        CGFloat y_min = piece.center.y - (piece.bounds.size.height / 2);
        CGFloat y_max = y_min + piece.bounds.size.height;
        if (point.x > x_min && point.x < x_max && point.y > y_min && point.y < y_max ) {

			
			
			[self bringSubviewToFront:piece];

			[UIView beginAnimations:@"" context:NULL];
			[UIView setAnimationDuration:0.2];
			piece.transform = CGAffineTransformMakeScale(1.2, 1.2);
			[UIView setAnimationDelegate:self];
			[UIView commitAnimations];

			
        } else {
			
            //piece.hidden = NO;
			[UIView beginAnimations:@"" context:NULL];
			[UIView setAnimationDuration:0.2];
			piece.transform = CGAffineTransformMakeScale(1.0, 1.0);
			[UIView setAnimationDelegate:self];
			[UIView commitAnimations];
        }
    }
		
}

	
-(void)startSetupWithArray:(NSMutableArray*)array {
	
	
	NSMutableArray *use = array;
	
	/*
	NSOperationQueue *thephotoQueue = [[[NSOperationQueue alloc] init] autorelease];
	[thephotoQueue setMaxConcurrentOperationCount:1];
	
	NSInvocationOperation *operation = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(setupView:) object:use];
	[thephotoQueue addOperation:operation];
	[operation release];
	*/
	
	
	[self setupView:use];
	
}
		 
-(void)setupView:(NSMutableArray*)array {
	
	NSLog(@"Setting up");
	
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
		
		int row = 0;
		int column = 0;
		for(int i = 0; i < [array count]; ++i) {
						
			
			Thumbnail *imageView = [[[Thumbnail alloc] init] autorelease];
			imageView.userInteractionEnabled = FALSE;
			imageView.tag = i;
			[imageView setImage:[array objectAtIndex:i]];
			
			if (row == 0)
			imageView.frame = CGRectMake(row * 36, column, 35, 22);
			else
			imageView.frame = CGRectMake(row * 36, column, 35, 22);

			CALayer *l = [imageView layer];
			l.masksToBounds = YES;
			l.borderWidth = 1.0;
			l.borderColor = [[UIColor whiteColor] CGColor];
			
			[self addSubview:imageView];
			
			if (column == 0) {
				column = 0;
				row++;
			} else {
				
				column++;
			}
						
		}
	
	[pool release];
	
}


-(void)dealloc {
	
	self.thumbs = nil;
	[thumbs release];
	
	[super dealloc];
}

@end
