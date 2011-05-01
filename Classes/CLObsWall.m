//
//  CLObsWall.m
//  Noms
//
//  Created by Colby Ludwig on 11-04-26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CLObsWall.h"


@implementation CLObsWall

-(id)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if (self) {
		self.backgroundColor = WALL_COLOR;
	}
	return self;
}

@end
