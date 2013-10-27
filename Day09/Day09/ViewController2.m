//
//  ViewController2.m
//  Day09
//
//  Created by MAC on 10/27/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
@property (weak, nonatomic) IBOutlet UILabel *lblA;
@property (weak, nonatomic) IBOutlet UILabel *lblB;

@end

@implementation ViewController2

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
	// Do any additional setup after loading the view.
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Back:(id)sender {
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}

@end
