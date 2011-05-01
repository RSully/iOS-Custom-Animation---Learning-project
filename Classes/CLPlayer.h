//
//  CLPlayer.h
//  Noms
//
//  Created by Colby Ludwig on 11-04-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLFunctions.h"


@interface CLPlayer : UIView {
	CGPoint beginPoint;
	CGPoint gotoPoint;
	CGPoint lastPoint;
	CGRect lastFrame;
	NSDate *beginStart;
}

@property (nonatomic, assign) CGPoint beginPoint;
@property (nonatomic, assign) CGPoint gotoPoint;
@property (nonatomic, assign) CGPoint lastPoint;
@property (nonatomic, assign) CGRect lastFrame;
@property (nonatomic, retain) NSDate *beginStart;

@end
