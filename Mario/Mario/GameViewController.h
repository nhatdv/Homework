//
//  GameViewController.h
//  Mario
//
//  Created by MAC on 11/5/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Run.h"
#import "City.h"
#import "Balll.h"

@interface GameViewController : UIViewController
@property Run *run;
@property City *city1;
@property City *city2;
@property Balll *ball1;
@property Balll *ball2;

@property NSTimer *timer;
@property NSTimer *timer1;
@end
