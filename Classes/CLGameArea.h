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

#define PLAYER_SIZE 35

@interface CLGameArea : UIView {
	CLPlayer *me;
	CLFinish *end;
	
	NSTimer *refresher;
}

-(void)handlePlayerMove;
-(void)checkPlayerFinished;

@end
