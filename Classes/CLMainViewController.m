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
		[self loadLevel];
		self.view.userInteractionEnabled = YES;
	}
	return self;
}


-(void)loadLevel {
	if (game) {
		[game removeFromSuperview];
		[game release], game = nil;
	}
	NSUInteger level = [lvlMgr level];
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
		
		[lvlMgr setLevel:0];
	}
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

- (void)statusBarOverlayDidRecognizeGesture:(UIGestureRecognizer *)gestureRecognizer {
    NSLog(@"Gesture: %@", gestureRecognizer);
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
