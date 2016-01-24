//
//  ViewController.m
//  lesson10. Task#2
//
//  Created by Maksym Savisko on 1/24/16.
//  Copyright © 2016 Maksym Savisko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    UIDynamicAnimator* _animator;
    UIGravityBehavior* _gravity;
    UICollisionBehavior* _collision;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    _gravity = [[UIGravityBehavior alloc] init];
    [_animator addBehavior:_gravity];
    _collision = [[UICollisionBehavior alloc] init];
    _collision.translatesReferenceBoundsIntoBoundary = YES;
    [_animator addBehavior:_collision];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) touchesBegan:(NSSet*) touches withEvent:(UIEvent *) event {
    CGPoint point = [[touches anyObject] locationInView:self.view];
    
    UIView * square = [[UIView alloc] initWithFrame:CGRectMake(point.x, point.y, 50, 50)];
    square.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:square];
    [_gravity addItem:square];
    [_collision addItem:square];
}

@end
