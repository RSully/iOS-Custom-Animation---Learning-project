//
//  CLLevelManager.h
//  Noms
//
//  Created by Colby Ludwig on 11-04-26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSON.h"

@interface CLLevelManager : NSObject {
	NSNumber *level;
	NSArray *levels;
}

-(NSDictionary*)objectForLevel:(NSUInteger)lvl;

-(void)saveGame;

-(NSUInteger)levelAmount;
-(void)setLevel:(NSUInteger)newLevel;
-(NSUInteger)level;
-(NSNumber*)levelObj;

@end
