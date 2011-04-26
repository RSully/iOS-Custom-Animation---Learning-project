//
//  CLPlayer.h
//  Noms
//
//  Created by Colby Ludwig on 11-04-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CLPlayer : UIView {
	CGPoint beginPoint;
	CGPoint gotoPoint;
	NSDate *beginStart;
}

@property (nonatomic, assign) CGPoint beginPoint;
@property (nonatomic, assign) CGPoint gotoPoint;
@property (nonatomic, retain) NSDate *beginStart;

@end
