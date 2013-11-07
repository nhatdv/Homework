//
//  GameViewController.m
//  Mario
//
//  Created by MAC on 11/5/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()
{
    float _alpha;
    int count;
}

@end

@implementation GameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.run = [[Run alloc]initWithFrame:CGRectMake(50, 300, 100, 100)];
        [self.run startAnimating];
        
        self.city1 = [[City alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,self.view.frame.size.height-150)];
        self.city2 = [[City alloc]initWithFrame:CGRectMake(self.view.frame.size.width,0, self.view.frame.size.width, self.view.frame.size.height-150)];
        [self.view addSubview:self.city1];
        [self.view addSubview:self.city2];
        [self.view addSubview:self.run];
        self.timer = [NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(running) userInfo:nil repeats:YES];
        
        self.ball1=[[Balll alloc] initWithFrame:CGRectMake(320, 350, 30, 30)];
        
        
        [self.view addSubview:self.ball1];
        self.timer1=[NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(moveBall) userInfo:nil repeats:YES];
        
        
      
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(resetImage:)];
    [self.view addGestureRecognizer:tapGesture];
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveImage:)];
    [panGesture setMinimumNumberOfTouches:1];
	[panGesture setMaximumNumberOfTouches:1];
    [self.view addGestureRecognizer:panGesture];
    
    
    
}

- (void)resetImage:(UITapGestureRecognizer *)recognizer
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    
    self.run.transform = CGAffineTransformIdentity;
    
    [self.run setFrame:CGRectMake(50, 300, 100, 100)];
    
    [UIView commitAnimations];
}

- (void)moveImage:(UIPanGestureRecognizer *)recognizer
{
    [self.run setFrame:CGRectMake(50, 250, 100, 100)];
    
}


- (void) running{
    if (self.city1.frame.origin.x > 0- self.view.frame.size.width)
    {
        [self.city1 setFrame:CGRectMake(self.city1.frame.origin.x-1, self.city1.frame.origin.y, self.city1.frame.size.width, self.city1.frame.size.height)];
        [self.city2 setFrame:CGRectMake(self.city2.frame.origin.x-1, self.city2.frame.origin.y, self.city2.frame.size.width, self.city2.frame.size.height)];
    }else{
        //     [self.timer invalidate];
        [self.city1 setFrame:CGRectMake(0, 0, self.city1.frame.size.width, self.city1.frame.size.height)];
        [self.city2 setFrame:CGRectMake(self.view.frame.size.width,0, self.city2.frame.size.width, self.city2.frame.size.height)];
    }
    
}
- (void) moveBall
{
    // [UIView animateWithDuration:0.02 animations:^{
    
    self.ball1.transform = CGAffineTransformMakeRotation(_alpha);
    self.ball1.center = CGPointMake(_ball1.center.x - 5, _ball1.center.y);
    _alpha += M_PI/20;
    
    //}];
    
}

@end
