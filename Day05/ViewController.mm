//
//  ViewController.m
//  Day05
//
//  Created by MAC on 10/20/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ViewController.h"
#include "ccpObjectMath.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Calculate:(id)sender {
    clsCalculate *cal= new clsCalculate;
    
    NSLog(@"Add: %d", cal->add(1, 2));
    NSLog(@"Minus: %d", cal->minus(4, 2));
    NSLog(@"Multi: %d", cal->multi(4, 3));
    NSLog(@"Divide: %d", cal->divide(6, 3));
    NSLog(@"Giai thua: %d", cal->gt(5));
    
}

@end
