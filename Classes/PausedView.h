//
//  PausedView.h
//  Noms
//
//  Created by Colby Ludwig on 11-04-30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface PausedView : UIView {
    UILabel *levelLabel;
    UILabel *nomsLabel;
    UILabel *deathsLabel;
    
    UILabel *levelStat;
    UILabel *nomsStat;
    UILabel *deathsStat;
    
    NSInteger levelCount;
    NSInteger nomsCount;
    NSInteger deathsCount;
}

-(void)setLevel:(NSUInteger)lvl;
-(void)setNoms:(NSUInteger)got fromTotal:(NSUInteger)tot;
-(void)setDeaths:(NSUInteger)ds;

@end
