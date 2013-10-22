//
//  ModalVC1.m
//  Day08
//
//  Created by MAC on 10/22/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ModalVC1.h"
#import "ModalVC2.h"

@interface ModalVC1 ()

@end

@implementation ModalVC1

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
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)presentDefautl:(id)sender {
    ModalVC2 *modalVC2 = [[ModalVC2 alloc] initWithNibName:@"ModalVC2" bundle:nil];
    [self presentViewController:modalVC2 animated:YES completion:^{ 
        
    }];
    
    //modalVC2.view.superview.frame = CGRectMake(100, 100, 300 , 200);
}

- (IBAction)presentFlip:(id)sender {
    ModalVC2 *modalVC2 = [[ModalVC2 alloc] initWithNibName:@"ModalVC2" bundle:nil];
    [modalVC2 setModalTransitionStyle: UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:modalVC2 animated:YES completion:^{
        
    }];
   
    
}
- (IBAction)presentCrossDissolve:(id)sender {
    ModalVC2 *modalVC2 = [[ModalVC2 alloc] initWithNibName:@"ModalVC2" bundle:nil];
    [modalVC2 setModalTransitionStyle: UIModalTransitionStyleCrossDissolve];
    [self presentViewController:modalVC2 animated:YES completion:^{
        
    }];
}

@end
