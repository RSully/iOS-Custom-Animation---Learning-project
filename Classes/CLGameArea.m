//
//  CLGameArea.m
//  Noms
//
//  Created by Colby Ludwig on 11-04-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CLGameArea.h"
#import "CLMainViewController.h"


@implementation CLGameArea


- (id)initWithFrame:(CGRect)frame level:(NSDictionary*)lvl {
    self = [super initWithFrame:frame];
    if (self) {
		self.userInteractionEnabled = YES;
		self.clipsToBounds = YES;
		self.backgroundColor = [UIColor greenColor];
		
		refresher = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(didTick:) userInfo:nil repeats:YES];
		walls = [[NSMutableArray alloc] init];
		enemies = [[NSMutableArray alloc] init];
		
		[self loadLevel:lvl];
		
		UITapGestureRecognizer *ges = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTap:)];
		[self addGestureRecognizer:ges];
		[ges release];
    }
    return self;
}

-(void)loadLevel:(NSDictionary*)lvl {
	NSLog(@"Loading level: %@", lvl);
	
	// start, end, obs
	NSArray *startInfo = [lvl objectForKey:@"start"];
	NSArray *endInfo = [lvl objectForKey:@"end"];
	NSArray *obsInfo = [lvl objectForKey:@"obs"];
	
	
	end = [[CLFinish alloc] initWithFrame:CGRectMake([[endInfo objectAtIndex:0] floatValue], 
													 [[endInfo objectAtIndex:1] floatValue], 
													 [[endInfo objectAtIndex:2] floatValue], 
													 [[endInfo objectAtIndex:3] floatValue])];
	[self addSubview:end];
	
	me = [[CLPlayer alloc] initWithFrame:CGRectMake([[startInfo objectAtIndex:0] floatValue],
													[[startInfo objectAtIndex:1] floatValue],
													PLAYER_SIZE, PLAYER_SIZE)];
	[self addSubview:me];
	
	for (NSDictionary *obs in obsInfo) {
		NSString *type = [obs objectForKey:@"type"];
		NSArray *rects = [obs objectForKey:@"rect"];
		CGRect rec = CGRectMake([[rects objectAtIndex:0] floatValue], 
								[[rects objectAtIndex:1] floatValue], 
								[[rects objectAtIndex:2] floatValue], 
								[[rects objectAtIndex:3] floatValue]);
		
		CLObs *obj = nil;
		if ([type isEqualToString:@"wall"]) {
			obj = [[CLObsWall alloc] initWithFrame:rec];
			[walls addObject:obj];
		} else if ([type isEqualToString:@"enemy"]) {
			obj = [[CLObsEnemy alloc] initWithFrame:rec];
			[enemies addObject:obj];
		}
		[self addSubview:obj];
		[obj release];
	}
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
	[self checkPlayerWalls];
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
	//NSLog(@"START: %f -Diff: %f", startTime, timeDiff);
	
	CGFloat mRise = (endPoint.y-beginPoint.y);
	CGFloat mRun = (endPoint.x-beginPoint.x);
	
	CGFloat moveY = (timeDiff/totalDuration)*mRise;
	CGFloat moveX = (timeDiff/totalDuration)*mRun;
	
	newPoint = CGPointMake(beginPoint.x+moveX, beginPoint.y+moveY);
	CGFloat newDistance = DistanceBetweenTwoPoints(beginPoint, newPoint);
	if (newDistance >= totalDistance) {
		newPoint = endPoint;
	}
	
	me.lastPoint = me.center;
	me.lastFrame = me.frame;
	me.center = newPoint;
}
-(void)checkPlayerFinished {
	CGRect finishRect = end.frame;
	CGRect curRect = me.frame;
	
	if (CGRectContainsRect(finishRect, curRect)) {
		[self didWin];
	}
}
-(void)checkPlayerWalls {
	CGRect player = me.frame;
	//CGRectIntersection, CGRectIntersectsRect
	for (CLObs *wall in walls) {
		CGRect intersection = CGRectIntersection(player, wall.frame);
		if (!CGRectIsNull(intersection)) {
			//NSLog(@"Intersects %@", NSStringFromCGRect(intersection));
			ObsPosition *pos = RelPositionOfPlayer(me.lastFrame, wall.frame);
			CGRect newPlayer = player;
			//CGPoint newLastPoint = me.gotoPoint;
			if (ObsEqual(pos, ObsRight)) {
				NSLog(@"right");
				newPlayer.origin.x = wall.frame.origin.x + wall.frame.size.width + 1;
				//newLastPoint.x = newPlayer.origin.x+(PLAYER_SIZE/2);
			}
			if (ObsEqual(pos, ObsLeft)) {
				NSLog(@"left");
				newPlayer.origin.x = wall.frame.origin.x - newPlayer.size.width - 1;
				//newLastPoint.x = newPlayer.origin.x+(PLAYER_SIZE/2);
			}
			if (ObsEqual(pos, ObsTop)) {
				NSLog(@"top");
				newPlayer.origin.y = wall.frame.origin.y - newPlayer.size.height - 1;
				//newLastPoint.y = newPlayer.origin.y+(PLAYER_SIZE/2);
			}
			if (ObsEqual(pos, ObsBottom)) {
				NSLog(@"botom");
				newPlayer.origin.y = wall.frame.origin.y + wall.frame.size.height + 1;
				//newLastPoint.y = newPlayer.origin.y+(PLAYER_SIZE/2);
			}
			me.frame = newPlayer;
			//me.gotoPoint = newLastPoint;
		}
	}
}


-(void)didWin {
	[refresher invalidate];
	[(CLMainViewController*)vc nextLevel];
}

-(void)setVC:(UIViewController*)newvc { vc = newvc; }

- (void)dealloc {
	[me release];
	[walls release];
	[enemies release];
    [super dealloc];
}


@end
