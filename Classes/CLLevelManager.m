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
		
//		if ([[NSUserDefaults standardUserDefaults] objectForKey:@"level"]) {
//			level = [[[NSUserDefaults standardUserDefaults] objectForKey:@"level"] retain];
//            deathAmount = [[[NSUserDefaults standardUserDefaults] objectForKey:@"deaths"] retain];
//            NSLog(@"Loaded: %u/%u", [level unsignedIntValue], [deathAmount unsignedIntValue]);
//        } else {
			level = [[NSNumber alloc] initWithInt:6
                     ];
//            deathAmount = [[NSNumber alloc] initWithInt:0];
//        }
		
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
    [self saveGame];
}

-(void)saveGame {
	[[NSUserDefaults standardUserDefaults] setObject:level forKey:@"level"];
    [[NSUserDefaults standardUserDefaults] setObject:deathAmount forKey:@"deaths"];
}
-(NSUInteger)level { return [level unsignedIntValue]; }
-(NSNumber*)levelObj { return level; }


-(NSUInteger)deathAmount { return [deathAmount unsignedIntValue]; }
-(void)setDeathAmount:(NSUInteger)newDeathAmount {
    [deathAmount release];
    deathAmount = [[NSNumber alloc] initWithUnsignedInt:newDeathAmount];
    [self saveGame];
}
-(NSNumber*)deathAmountObj { return deathAmount; }


-(void)dealloc {
	[level release];
    [deathAmount release];
	[levels release];
	[super dealloc];
}

@end
