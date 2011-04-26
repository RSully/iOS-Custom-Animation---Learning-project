//
//  CLFunctions.h
//  Noms
//
//  Created by Colby Ludwig on 11-04-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <time.h>

#define THING_SPEED 300

CGFloat CurrentTime();

CGFloat SlopeBetweenTwoPoints(CGPoint p1, CGPoint p2);
CGFloat DistanceBetweenTwoPoints(CGPoint point1, CGPoint point2);
CGFloat DurationForDistance(CGFloat dist);
