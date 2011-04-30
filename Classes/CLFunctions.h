//
//  CLFunctions.h
//  Noms
//
//  Created by Colby Ludwig on 11-04-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <time.h>

#define PLAYER_SPEED 300
#define ENEMY_SPEED 230

#define PLAYER_SIZE 34
#define ENEMY_SIZE 28
#define COIN_SIZE 22

#define ObsPosition NSString
#define ObsEqual(a,b) [a isEqualToString:b]
#define ObsTop @"kobs-top"
#define ObsBottom @"kobs-bottom"
#define ObsLeft @"kobs-left"
#define ObsRight @"kobs-right"

ObsPosition* RelPositionOfPlayer(CGRect player, CGRect obs);

CGFloat SlopeBetweenTwoPoints(CGPoint p1, CGPoint p2);
CGFloat DistanceBetweenTwoPoints(CGPoint point1, CGPoint point2);

CGFloat DurationForPlayerDistance(CGFloat dist);
CGFloat DurationForEnemyDistance(CGFloat dist);
