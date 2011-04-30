//
//  CLObsEnemy.h
//  Noms
//
//  Created by Colby Ludwig on 11-04-26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLFunctions.h"
#import "CLObs.h"

@interface CLObsEnemy : CLObs {
	CGPoint startPoint;
	CGPoint endPoint;
	NSUInteger direction;
	NSDate *beginStart;
}

-(id)initWithStart:(CGPoint)sp end:(CGPoint)ep;

@property (nonatomic, assign) NSUInteger direction;
@property (nonatomic, assign) CGPoint endPoint;
@property (nonatomic, assign) CGPoint startPoint;
@property (nonatomic, retain) NSDate *beginStart;


@end
