//
//  CLObsCoin.m
//  Noms
//
//  Created by Colby Ludwig on 11-04-29.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CLObsCoin.h"


@implementation CLObsCoin
@synthesize didGet;

-(id)initWithPoint:(CGPoint)p {
	self = [super initWithFrame:CGRectMake(p.x-(COIN_SIZE/2), p.y-(COIN_SIZE/2), COIN_SIZE, COIN_SIZE)];
	if (self) {
		didGet = NO;
		self.backgroundColor = COIN_COLOR;
	}
	return self;
}

@end
