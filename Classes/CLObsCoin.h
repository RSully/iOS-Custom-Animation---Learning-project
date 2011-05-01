//
//  CLObsCoin.h
//  Noms
//
//  Created by Colby Ludwig on 11-04-29.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLFunctions.h"
#import "CLObs.h"


@interface CLObsCoin : CLObs {
	BOOL didGet;
}
-(id)initWithPoint:(CGPoint)p;

@property (nonatomic, assign) BOOL didGet;

@end
