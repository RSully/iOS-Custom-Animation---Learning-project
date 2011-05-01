//
//  CLMainViewController.h
//  Noms
//
//  Created by Colby Ludwig on 11-04-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLGameArea.h"
#import "CLLevelManager.h"
#import "PausedView.h"
#import "MenuView.h"

@interface CLMainViewController : UIViewController {
	CLLevelManager *lvlMgr;
	CLGameArea *game;
    PausedView *pauseMenu;
    MenuView *mainMenu;
}

-(void)tryPause;

-(void)statusBarTapped;
-(void)incrementDeaths;
-(void)setNoms:(NSUInteger)got fromTotal:(NSUInteger)tot;

-(void)loadWelcome;
-(void)unloadWelcome;

-(void)loadLevel;
-(void)nextLevel;

-(void)newGame;
-(void)continueGame;

@end
