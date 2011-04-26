//
//  NomsAppDelegate.h
//  Noms
//
//  Created by Colby Ludwig on 11-04-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLMainViewController.h"

@interface NomsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	CLMainViewController *mainVC;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

