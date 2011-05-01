//
//  PausedView.m
//  Noms
//
//  Created by Colby Ludwig on 11-04-30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PausedView.h"


@implementation PausedView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.85];
        
        levelLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 30, 144, 32)];
        nomsLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 30+32+4, 144, 32)];
        deathsLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 30+32+4+32+4, 144, 32)];
        
        levelStat = [[UILabel alloc] initWithFrame:CGRectMake(162, 30, 130, 30)];
        nomsStat = [[UILabel alloc] initWithFrame:CGRectMake(162, 30+32+4, 130, 30)];
        deathsStat = [[UILabel alloc] initWithFrame:CGRectMake(162, 30+32+4+32+4, 130, 30)];
        
        // Labels
        [levelLabel setFont:[UIFont systemFontOfSize:30.0f]];
        [nomsLabel setFont:[UIFont systemFontOfSize:30.0f]];
        [deathsLabel setFont:[UIFont systemFontOfSize:30.0f]];
        
        [levelStat setFont:[UIFont systemFontOfSize:30.0f]];
        [nomsStat setFont:[UIFont systemFontOfSize:30.0f]];
        [deathsStat setFont:[UIFont systemFontOfSize:30.0f]];
        
        [levelLabel setTextColor:[UIColor whiteColor]];
        [nomsLabel setTextColor:[UIColor whiteColor]];
        [deathsLabel setTextColor:[UIColor whiteColor]];
        
        [levelStat setTextColor:[UIColor whiteColor]];
        [nomsStat setTextColor:[UIColor whiteColor]];
        [deathsStat setTextColor:[UIColor whiteColor]];
        
        [levelLabel setTextAlignment:UITextAlignmentLeft];
        [nomsLabel setTextAlignment:UITextAlignmentLeft];
        [deathsLabel setTextAlignment:UITextAlignmentLeft];
        
        [levelStat setTextAlignment:UITextAlignmentRight];
        [nomsStat setTextAlignment:UITextAlignmentRight];
        [deathsStat setTextAlignment:UITextAlignmentRight];
        
        [levelLabel setBackgroundColor:[UIColor clearColor]];
        [nomsLabel setBackgroundColor:[UIColor clearColor]];
        [deathsLabel setBackgroundColor:[UIColor clearColor]];
        
        [levelStat setBackgroundColor:[UIColor clearColor]];
        [nomsStat setBackgroundColor:[UIColor clearColor]];
        [deathsStat setBackgroundColor:[UIColor clearColor]];

        [levelLabel setText:@"LEVEL"];
        [nomsLabel setText:@"NOMS"];
        [deathsLabel setText:@"DEATHS"];
        
        [self setLevel:0];
        [self setNoms:0 fromTotal:0];
        [self setDeaths:0];
        
        [self addSubview:levelLabel];
        [self addSubview:nomsLabel];
        [self addSubview:deathsLabel];
        
        [self addSubview:levelStat];
        [self addSubview:nomsStat];
        [self addSubview:deathsStat];
        
    }
    return self;
}

//[levelStat setText:@"1"];
//[nomsStat setText:@"0/0"];
//[deathsStat setText:@"0"];
-(void)setLevel:(NSUInteger)lvl {
    [levelStat setText:[NSString stringWithFormat:@"%u", lvl]];
}
-(void)setNoms:(NSUInteger)got fromTotal:(NSUInteger)tot {
    NSLog(@"Set noms: %u, total: %u", got, tot);
    [nomsStat setText:[NSString stringWithFormat:@"%u/%u", got, tot]];
}
-(void)setDeaths:(NSUInteger)ds {
    [deathsStat setText:[NSString stringWithFormat:@"%u", ds]];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc
{
    [levelLabel release];
    [nomsLabel release];
    [deathsLabel release];
    [levelStat release];
    [nomsStat release];
    [deathsStat release];

    [super dealloc];
}

@end
