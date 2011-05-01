//
//  MenuView.h
//  Noms
//
//  Created by Colby Ludwig on 11-04-30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLFunctions.h"
#import "CLObsEnemy.h"

@interface MenuView : UIView {
    CLObsEnemy *enemy1;
    UIButton *newButton;
    UIButton *continueButton;
    UIButton *instructButton;
    UILabel *gameTitle;
    UIViewController *mainVC;
}

-(void)animateEnemy1;
-(void)setVC:(UIViewController*)newvc;

@end
