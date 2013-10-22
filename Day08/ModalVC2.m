//
//  ModalVC2.m
//  Day08
//
//  Created by MAC on 10/22/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ModalVC2.h"

@interface ModalVC2 ()

@end

@implementation ModalVC2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Set size view
    
    
}
- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    //
        self.view.superview.frame = CGRectMake(100, 100, 300 , 200);
}

- (void)viewDidLayoutSubviews
{
    self.view.superview.frame = CGRectMake(100, 100, 300 , 200);
}
- (IBAction)dismissMe:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
