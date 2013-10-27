//
//  ViewController1.m
//  Day09
//
//  Created by MAC on 10/27/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()
@property (weak, nonatomic) IBOutlet UILabel *lblUpRight;
@property (weak, nonatomic) IBOutlet UILabel *lblUpLeft;
@property (weak, nonatomic) IBOutlet UILabel *lblDownRight;
@property (weak, nonatomic) IBOutlet UILabel *lblDownLefy;

@property (weak, nonatomic) IBOutlet UILabel *lbl1;
@property (weak, nonatomic) IBOutlet UILabel *lbl2;
@property (weak, nonatomic) IBOutlet UILabel *lbl3;

@end

@implementation ViewController1

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
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void) viewDidLayoutSubviews
{
    if (UIDeviceOrientationIsPortrait(self.interfaceOrientation)){
        //DO Portrait
    }else{
        self.lbl1.center = CGPointMake((self.lblUpLeft.frame.origin.x + self.lblDownLefy.frame.origin.x)/2 - 200,
                                       (self.lblDownRight.center.y + self.lblUpLeft.center.y)/2);
        self.lbl2.center = CGPointMake((self.lblUpLeft.frame.origin.x + self.lblDownLefy.frame.origin.x)/2 -90,
                                       (self.lblDownRight.center.y + self.lblUpLeft.center.y)/2);
        self.lbl3.center = CGPointMake((self.lblUpLeft.frame.origin.x + self.lblDownLefy.frame.origin.x)/2,
                                       (self.lblDownRight.center.y + self.lblUpLeft.center.y)/2);
        

    }

    
}

@end
