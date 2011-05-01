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
#import "CLObsCoin.h"


@interface CLGameArea : UIView {
	CGRect initPlayerFrame;
	CLPlayer *me;
	CLFinish *end;
	NSMutableArray *walls;
	NSMutableArray *enemies;
	NSMutableArray *coins;
	
	NSTimer *refresher;
	UIViewController *vc;
    
    BOOL won;
    NSUInteger gotAmount;
    BOOL paused;
    NSDate *pausedWhen;
}

-(void)pause;
-(void)unpause;

-(id)initWithFrame:(CGRect)frame level:(NSDictionary*)lvl;
-(void)loadLevel:(NSDictionary*)lvl;

-(void)handlePlayerMove;
-(void)handleEnemiesMove;

-(void)checkPlayerFinished;
-(void)checkPlayerEnemies;
-(void)checkPlayerCoins;
-(void)checkPlayerWalls;

-(void)didWin;
-(void)didGetOwned;

-(void)setVC:(UIViewController*)newvc;

@property (nonatomic, retain) NSDate *pausedWhen;
@property (nonatomic, assign) BOOL paused;
@property (nonatomic, assign) BOOL won;

@end
