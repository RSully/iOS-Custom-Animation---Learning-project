//
//  CLFunctions.h
//  Noms
//
//  Created by Colby Ludwig on 11-04-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <time.h>

#define PLAYER_SPEED 240
#define ENEMY_SPEED 220

#define PLAYER_SIZE 34
#define ENEMY_SIZE 28
#define COIN_SIZE 22

#define ObsPosition NSString
#define ObsEqual(a,b) [a isEqualToString:b]
#define ObsTop @"kobs-top"
#define ObsBottom @"kobs-bottom"
#define ObsLeft @"kobs-left"
#define ObsRight @"kobs-right"

// Colors
#define BG_COLOR_NORM [UIColor colorWithRed:(26.0f/255.0f) green:(26.0f/255.0f) blue:(26.0f/255.0f) alpha:1.0f]
#define BG_COLOR_FADE [UIColor colorWithRed:(53.0f/255.0f) green:(53.0f/255.0f) blue:(53.0f/255.0f) alpha:1.0f]
#define PLAYER_COLOR_NORM [UIColor colorWithRed:(218.0f/255.0f) green:0.0f blue:0.0f alpha:1.0f]
#define PLAYER_COLOR_FADE [UIColor colorWithRed:(41.0f/255.0f) green:(40.0f/255.0f) blue:(40.0f/255.0f) alpha:1.0f]
#define COIN_COLOR [UIColor colorWithRed:0.0f green:(228.0f/225.0f) blue:(21.0f/255.0f) alpha:1.0f]
#define ENEMY_COLOR [UIColor colorWithRed:(217.0f/255.0f) green:(40.0f/255.0f) blue:1.0f alpha:1.0f]
#define WALL_COLOR [UIColor colorWithRed:(99.0f/255.0f) green:(99.0f/255.0f) blue:(99.0f/255.0f) alpha:1.0f]
#define FINISH_COLOR [UIColor colorWithRed:0.0f green:(192.0f/255.0f) blue:1.0f alpha:1.0f]
#define BUTTON_COLOR [UIColor colorWithRed:(53.0f/255.0f) green:(53.0f/255.0f) blue:(53.0f/255.0f) alpha:1.0f]

ObsPosition* RelPositionOfPlayer(CGRect player, CGRect obs);

CGFloat SlopeBetweenTwoPoints(CGPoint p1, CGPoint p2);
CGFloat DistanceBetweenTwoPoints(CGPoint point1, CGPoint point2);

CGFloat DurationForPlayerDistance(CGFloat dist);
CGFloat DurationForEnemyDistance(CGFloat dist);
