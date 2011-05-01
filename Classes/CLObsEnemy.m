//
//  CLObsEnemy.m
//  Noms
//
//  Created by Colby Ludwig on 11-04-26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CLObsEnemy.h"


@implementation CLObsEnemy
@synthesize direction, startPoint, endPoint, beginStart;


-(id)initWithStart:(CGPoint)sp end:(CGPoint)ep {
	self = [super initWithFrame:CGRectMake(sp.x-(ENEMY_SIZE/2), sp.y-(ENEMY_SIZE/2), ENEMY_SIZE, ENEMY_SIZE)];
	if (self) {
		startPoint = sp;
		endPoint = ep;
		direction = 0;
		self.beginStart = [NSDate date];
		self.backgroundColor = ENEMY_COLOR;
	}
	return self;
}

@end
