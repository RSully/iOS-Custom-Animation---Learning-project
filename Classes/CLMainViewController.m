    //
//  CLMainViewController.m
//  Noms
//
//  Created by Colby Ludwig on 11-04-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CLMainViewController.h"


@implementation CLMainViewController

-(id)init {
	self = [super init];
	if (self) {
		lvlMgr = [[CLLevelManager alloc] init];
        pauseMenu = [[PausedView alloc] initWithFrame:CGRectMake(0, 0, 320, 160)];
        [pauseMenu setAlpha:0.0f];
        
        [self loadWelcome];
		self.view.userInteractionEnabled = YES;
	}
	return self;
}

-(void)loadWelcome {
    if (game) {
        [game removeFromSuperview];
        [game release], game = nil;
    }
    if (mainMenu) {
        if ([mainMenu superview] == nil) {
            [self.view addSubview:mainMenu];
        }
    } else {
        mainMenu = [[MenuView alloc] initWithFrame:self.view.bounds];
        [self.view addSubview:mainMenu];
    }
    [mainMenu setVC:self];
}
-(void)unloadWelcome {
    if (mainMenu) {
        [mainMenu removeFromSuperview];
        [mainMenu release], mainMenu = nil;
    }
}

-(void)newGame {
    [lvlMgr setLevel:0];
    [lvlMgr setDeathAmount:0];
    [self loadLevel];
    [self unloadWelcome];
}
-(void)continueGame {
    [self loadLevel];
    [self unloadWelcome];
}


-(void)loadLevel {
	if (game) {
		[game removeFromSuperview];
		[game release], game = nil;
	}
	NSUInteger level = [lvlMgr level];
    [pauseMenu setLevel:level+1];
    [pauseMenu setDeaths:[lvlMgr deathAmount]];
	NSDictionary *jsonObj = [lvlMgr objectForLevel:level];
	game = [[CLGameArea alloc] initWithFrame:CGRectMake(0, 0, 320, 460) level:jsonObj];
	[game setVC:self];
	[self.view addSubview:game];
}

-(void)nextLevel {
	NSUInteger levelAmount = [lvlMgr levelAmount];
	NSUInteger nextLevel = [lvlMgr level]+1;
	if (nextLevel < levelAmount) {
		UIAlertView *nextNom = [[UIAlertView alloc] initWithTitle:@"Next level!" message:@"You haz won this level!" delegate:nil cancelButtonTitle:@"Next level" otherButtonTitles:nil];
		[nextNom show];
		[nextNom release];
		
		[lvlMgr setLevel:nextLevel];
		[lvlMgr saveGame];
		[self loadLevel];
	} else {
		UIAlertView *winning = [[UIAlertView alloc] initWithTitle:@"WINNER" message:@"Charlie Sheen would be proud" delegate:nil cancelButtonTitle:@"OMG" otherButtonTitles:nil];
		[winning show];
		[winning release];
		
        if ([pauseMenu superview] == nil) {
            [pauseMenu setAlpha:0.0f];
            [self.view addSubview:pauseMenu];
        }
        [UIView animateWithDuration:0.45 animations:^{
            [pauseMenu setAlpha:1.0f]; 
        }];
        
		[lvlMgr setLevel:0];
        [lvlMgr setDeathAmount:0];
	}
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

-(void)tryPause {
    if (game) {
        [game pause];
        [self.view addSubview:pauseMenu];
        [UIView animateWithDuration:0.45 animations:^{
            [pauseMenu setAlpha:1.0f];
        }];
    }
}

-(void)statusBarTapped {
    if (game) {
        if (game.won) {
            if ([pauseMenu superview] == nil) {
                [pauseMenu setAlpha:0.0f];
                [self.view addSubview:pauseMenu];
            }
            [UIView animateWithDuration:0.45 animations:^{
                [pauseMenu setAlpha:1.0f]; 
            }];
        } else if (game.paused) {
            // HIDE 
            [UIView animateWithDuration:0.45 animations:^{
                [pauseMenu setAlpha:0.0f];
            } completion:^(BOOL finished){
                [pauseMenu removeFromSuperview];
                [game unpause];
            }];
        } else {
           [game pause];
            // SHOW
            [self.view addSubview:pauseMenu];
            [UIView animateWithDuration:0.45 animations:^{
                [pauseMenu setAlpha:1.0f];
            }];
        }
    }
}
-(void)incrementDeaths {
    NSUInteger da = [lvlMgr deathAmount];
    [lvlMgr setDeathAmount:da+1];
    [pauseMenu setDeaths:[lvlMgr deathAmount]];
}
-(void)setNoms:(NSUInteger)got fromTotal:(NSUInteger)tot {
    [pauseMenu setNoms:got fromTotal:tot];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}


- (void)dealloc {
	[game release];
	[lvlMgr release];
    [super dealloc];
}


@end
