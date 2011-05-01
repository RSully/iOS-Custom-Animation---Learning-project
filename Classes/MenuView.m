//
//  MenuView.m
//  Noms
//
//  Created by Colby Ludwig on 11-04-30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MenuView.h"
#import "CLMainViewController.h"


@implementation MenuView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = BG_COLOR_NORM;
        
        gameTitle = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, 194, 68)];
        [gameTitle setFont:[UIFont systemFontOfSize:73.0f]];
        [gameTitle setTextColor:[UIColor whiteColor]];
        [gameTitle setBackgroundColor:[UIColor clearColor]];
        [gameTitle setText:@"Noms"];
        
        newButton = [[UIButton alloc] initWithFrame:CGRectMake(320-209, 245, 209, 47)];
        continueButton = [[UIButton alloc] initWithFrame:CGRectMake(320-217, 245+10+48, 217, 47)];
        instructButton = [[UIButton alloc] initWithFrame:CGRectMake(320-216, 245+10+48+10+48, 218, 47)];
        
        [newButton setBackgroundImage:[UIImage imageNamed:@"NewGameButton"] forState:UIControlStateNormal];
        [continueButton setBackgroundImage:[UIImage imageNamed:@"LoadGameButton"] forState:UIControlStateNormal];
        [instructButton setBackgroundImage:[UIImage imageNamed:@"InstructionsButton"] forState:UIControlStateNormal];
        
        [self addSubview:newButton];
        [self addSubview:continueButton];
        [self addSubview:instructButton];
        [self addSubview:gameTitle];
        
        enemy1 = [[CLObsEnemy alloc] initWithStart:CGPointMake(42, 220) end:CGPointMake(238, 136)];
        [self addSubview:enemy1];
        [self animateEnemy1];
    }
    return self;
}

-(void)setVC:(UIViewController*)newvc {
    mainVC = newvc;
    [newButton addTarget:mainVC action:@selector(newGame) forControlEvents:UIControlEventTouchUpInside];
    [continueButton addTarget:mainVC action:@selector(continueGame) forControlEvents:UIControlEventTouchUpInside];
}

-(void)animateEnemy1 {
    [UIView animateWithDuration:0.9f delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        [enemy1 setCenter:[enemy1 endPoint]];
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.9f delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
            [enemy1 setCenter:[enemy1 startPoint]];
        } completion:^(BOOL finished) {
            [self animateEnemy1];
        }];
    }];
}


- (void)dealloc
{
    [gameTitle release];
    [newButton release];
    [continueButton release];
    [instructButton release];
    [enemy1 release];
    [super dealloc];
}

@end
