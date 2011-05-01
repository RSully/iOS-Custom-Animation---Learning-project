//
//  MenuButton.m
//  Noms
//
//  Created by Colby Ludwig on 11-04-30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MenuButton.h"

@implementation MenuButton
-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
//        self.backgroundColor = BUTTON_COLOR;
//        self.titleLabel.font = [UIFont systemFontOfSize:36.0f];
//        self.titleLabel.textAlignment = UITextAlignmentRight;
    }
    return self;
}
-(void)setBtnImage:(UIImage*)bg {
    [self setImage:bg forState:UIControlStateNormal];
}
@end
