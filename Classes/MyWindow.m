//
//  MyWindow.m
//  Testing
//
//  Created by Ryan on 4/30/11.
//

#import "MyWindow.h"
#import "NomsAppDelegate.h"

@interface MyView : UIView {}
@end
@implementation MyView
-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
        [self addGestureRecognizer:tap];
        [tap release];
    }
    return self;
}
-(void)tap:(id)sender {
    [(NomsAppDelegate*)[UIApplication sharedApplication].delegate statusBarTapped];
}
//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    [(NomsAppDelegate*)[UIApplication sharedApplication].delegate statusBarTapped];
//}
-(void)dealloc { [super dealloc]; }
@end

@implementation MyWindow
-(id)init {
    self = [super initWithFrame:[[UIApplication sharedApplication] statusBarFrame]];
    if (self) {
        [self setWindowLevel:UIWindowLevelStatusBar+1.0f]; 
        [self setBackgroundColor:[UIColor clearColor]]; 
        [self setFrame:[[UIApplication sharedApplication] statusBarFrame]];
        
        MyView *v = [[MyView alloc] initWithFrame:[self bounds]];
        [self addSubview:v];
        [v release];
    }
    return self;
}
-(void)dealloc { [super dealloc]; }
@end
