//
//  CLLevelManager.m
//  Noms
//
//  Created by Colby Ludwig on 11-04-26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CLLevelManager.h"


@implementation CLLevelManager

-(id)init {
	self = [super init];
	if (self) {
		level = [[NSNumber alloc] initWithInt:0];
		
		if ([[NSUserDefaults standardUserDefaults] objectForKey:@"level"]) {
			level = [[[NSUserDefaults standardUserDefaults] objectForKey:@"level"] retain];
		}
		
		NSString *path = [[NSBundle mainBundle] pathForResource:@"levels" ofType:@"txt"];
		levels = [[[NSString stringWithContentsOfFile:path encoding:NSStringEncodingConversionAllowLossy error:nil] JSONValue] retain];
	}
	return self;
}

-(NSDictionary*)objectForLevel:(NSUInteger)lvl {
	return [levels objectAtIndex:lvl];
}

-(NSUInteger)levelAmount { return [levels count]; }
-(void)setLevel:(NSUInteger)newLevel {
	[level release];
	level = [[NSNumber alloc] initWithUnsignedInt:newLevel];
}

-(void)saveGame {
	[[NSUserDefaults standardUserDefaults] setObject:level forKey:@"level"];
}
-(NSUInteger)level { return [level unsignedIntValue]; }
-(NSNumber*)levelObj { return level; }

-(void)dealloc {
	[level release];
	[levels release];
	[super dealloc];
}

@end
