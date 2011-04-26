//
//  CLGameArea.h
//  Noms
//
//  Created by Colby Ludwig on 11-04-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLPlayer.h"
#import "CLFunctions.h"
#import "CLFinish.h"
#import <QuartzCore/QuartzCore.h>
#import "CLObs.h"
#import "CLObsWall.h"
#import "CLObsEnemy.h"

#define PLAYER_SIZE 35


@interface CLGameArea : UIView {
	CLPlayer *me;
	CLFinish *end;
	NSMutableArray *walls;
	NSMutableArray *enemies;
	
	NSTimer *refresher;
	UIViewController *vc;
}

-(id)initWithFrame:(CGRect)frame level:(NSDictionary*)lvl;
-(void)loadLevel:(NSDictionary*)lvl;

-(void)handlePlayerMove;
-(void)checkPlayerFinished;
-(void)checkPlayerWalls;

-(void)didWin;

-(void)setVC:(UIViewController*)newvc;

@end
