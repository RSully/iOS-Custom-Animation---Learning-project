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

@interface CLMainViewController : UIViewController {
	CLLevelManager *lvlMgr;
	CLGameArea *game;
}

-(void)loadLevel;
-(void)nextLevel;

@end
