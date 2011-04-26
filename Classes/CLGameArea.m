//
//  CLGameArea.m
//  Noms
//
//  Created by Colby Ludwig on 11-04-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CLGameArea.h"


@implementation CLGameArea


- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
		self.userInteractionEnabled = YES;
		self.clipsToBounds = YES;
		self.backgroundColor = [UIColor greenColor];
		
		refresher = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(didTick:) userInfo:nil repeats:YES];
		
		end = [[CLFinish alloc] initWithFrame:CGRectMake(0, self.frame.size.height-50, self.frame.size.width, 50)];
		[self addSubview:end];
		
        me = [[CLPlayer alloc] initWithFrame:CGRectMake(30, 30, PLAYER_SIZE, PLAYER_SIZE)];
		[self addSubview:me];
		
		
		UITapGestureRecognizer *ges = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTap:)];
		[self addGestureRecognizer:ges];
		[ges release];
    }
    return self;
}

-(void)didTap:(UITapGestureRecognizer*)ges {
	if (ges.state == UIGestureRecognizerStateEnded) {
		CGPoint tap = [ges locationInView:self];
		me.beginPoint = me.center;
		me.gotoPoint = tap;
		me.beginStart = [NSDate date];
	}
}


-(void)didTick:(id)sender {
	[self handlePlayerMove];
	[self checkPlayerFinished];
}

-(void)handlePlayerMove {
	if (CGPointEqualToPoint(CGPointZero, me.gotoPoint) || CGPointEqualToPoint(me.center, me.gotoPoint)) {
		return;
	}
	
	CGPoint beginPoint = me.beginPoint;
	CGPoint endPoint = me.gotoPoint;
	CGPoint newPoint = CGPointZero;
	
	NSDate *startTime = me.beginStart;
	NSTimeInterval timePassed_ms = [startTime timeIntervalSinceNow] * -1000.0;
	CGFloat timeDiff = timePassed_ms/1000;
		
	CGFloat totalDistance = DistanceBetweenTwoPoints(beginPoint, endPoint);
	CGFloat totalDuration = DurationForDistance(totalDistance);
	NSLog(@"START: %f -Diff: %f", startTime, timeDiff);
	
	CGFloat mRise = (endPoint.y-beginPoint.y);
	CGFloat mRun = (endPoint.x-beginPoint.x);
	
	CGFloat moveY = (timeDiff/totalDuration)*mRise;
	CGFloat moveX = (timeDiff/totalDuration)*mRun;
	
	newPoint = CGPointMake(beginPoint.x+moveX, beginPoint.y+moveY);
	CGFloat newDistance = DistanceBetweenTwoPoints(beginPoint, newPoint);
	if (newDistance >= totalDistance) {
		newPoint = endPoint;
	}
	
	me.center = newPoint;
}
-(void)checkPlayerFinished {
	CGRect finishRect = end.frame;
	CGRect curRect = me.frame;
	
	if (CGRectContainsRect(finishRect, curRect)) {
		[refresher invalidate];
		UIAlertView *hai = [[UIAlertView alloc] initWithTitle:@"Bitch, this took fucking forever. You just beat it." message:@"I hate you." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
		[hai show];
		[hai release];
	}
}






- (void)dealloc {
	[me release];
    [super dealloc];
}


@end
