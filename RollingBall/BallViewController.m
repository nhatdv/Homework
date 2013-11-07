//
//  BallViewController.m
//  RollingBall
//
//  Created by MAC on 11/5/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "BallViewController.h"

@interface BallViewController ()
{
    NSTimer * _timer;
    CGPoint pos;
}
@end

@implementation BallViewController
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/
- (void)viewDidLoad
{
    //[super viewDidLoad];
    
    pos = CGPointMake(14.0,7.0);
    
	UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOnBall)];
    [_ball addGestureRecognizer:tap];
    NSLog(@"tap %@", tap);
    
    
}


- (void) tapOnBall
{
    if (![_timer isValid]) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(moveBall) userInfo:nil repeats:YES];
        NSLog(@"10");
    }
    NSLog(@"11");
}

- (void) moveBall
{
    self.ball.center = CGPointMake(self.ball.center.x+pos.x,self.ball.center.y+pos.y);
	
	if(self.ball.center.x > 320 || self.ball.center.x < 0)
    {
		pos.x = -pos.x;
        NSLog(@"pos.x= %f",pos.x);
    }
	if(self.ball.center.y > 460 || self.ball.center.y < 0)
    {
		pos.y = -pos.y;
        NSLog(@"pos.y= %f",pos.y);
    }
    
    
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
@end
