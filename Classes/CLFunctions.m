//
//  CLFunctions.m
//  Noms
//
//  Created by Colby Ludwig on 11-04-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CLFunctions.h"

ObsPosition* RelPositionOfPlayer(CGRect player, CGRect obs) {
	if ((player.origin.y + player.size.height) < obs.origin.y) {
		return ObsTop;
	}
	if ((player.origin.x + player.size.width) < obs.origin.x) {
		return ObsLeft;
	}
	if (player.origin.x > (obs.origin.x + obs.size.width)) {
		return ObsRight;
	}
	if (player.origin.y > (obs.origin.y + obs.size.height)) {
		return ObsBottom;
	}
	return nil;
}

CGFloat CurrentTime() {
	//#define CUR_TIME (clock() / (CLOCKS_PER_SEC / 1000))
	return (CGFloat)(clock() / (CLOCKS_PER_SEC / 1000));
}

CGFloat SlopeBetweenTwoPoints(CGPoint p1, CGPoint p2) {
	return ((p1.y-p2.y)/(p1.x-p2.x));
}
CGFloat DistanceBetweenTwoPoints(CGPoint point1,CGPoint point2) {
	CGFloat dx = point2.x - point1.x;
	CGFloat dy = point2.y - point1.y;
	return sqrt(dx*dx + dy*dy);
}
BOOL CLPointsFuckingEqual(CGPoint p1, CGPoint p2) {
	return ((p1.x==p2.x)&&(p1.y==p2.y));
}
CGFloat DurationForDistance(CGFloat dist) {
	// SPEED_THING
	// pixels per second
	// duration = distance/speed
	return dist/(THING_SPEED);
}

