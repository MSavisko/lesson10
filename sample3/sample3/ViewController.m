//
//  ViewController.m
//  sample3
//
//  Created by Anton Lookin on 1/18/16.
//  Copyright © 2016 geekub. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *xconstraint;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (nonatomic) NSInteger tapCount;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidLayoutSubviews {
	[super viewDidLayoutSubviews];
}


- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
    self.tapCount = 0;
    
	for (NSLayoutConstraint *constraint in self.view.constraints) {
		if (constraint.firstAttribute == NSLayoutAttributeCenterX) {
			constraint.constant = 100.0f;
			break;
		}
	}
    [self movementAnimation];
	
}

- (void) movementAnimation {
    if (self.xconstraint.constant == 100.f) {
        self.xconstraint.constant = -100.f;
    } else self.xconstraint.constant = 100.f;
    [UIView animateWithDuration:4.4
                          delay:0.0f
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^(void) {
                         [self.view layoutIfNeeded];
                     }
                     completion:^(BOOL finished) {
                         [self buttonRotation];
                         dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                             [self movementAnimation];
                         });
                     }];
}

- (void) buttonRotation {
    [UIView animateWithDuration:1.0
                          delay:0.0f
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^(void) {
                         CGFloat radians = atan2f(self.button.transform.b, self.button.transform.a);
                         self.button.transform = CGAffineTransformMakeRotation(radians - M_PI);
                     }
                     completion:NULL];
}

-(void) touchesBegan:(NSSet*) touches withEvent:(UIEvent *) event {
    CGPoint point = [[touches anyObject] locationInView:self.view];
    if([self.button.layer.presentationLayer hitTest:point]) {
        self.button.highlighted = YES;
        [self.button performSelector:@selector(setHighlighted:) withObject:NULL afterDelay:0.25];
        [self.button sendActionsForControlEvents:UIControlEventTouchUpInside];
    }
}


- (IBAction)buttonTapped:(id)sender {
    self.tapCount++;
	NSLog(@"Tap #%ld", (long)self.tapCount);
}


@end
