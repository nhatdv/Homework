//
//  ViewController.m
//  ReadFile
//
//  Created by MAC on 10/18/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];   
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - Read File


- (IBAction)test:(id)sender {
    NSString *str = [[NSBundle mainBundle] pathForResource:@"putin" ofType:@"txt"];
    NSString *txtFileContents = [NSString stringWithContentsOfFile:str encoding:NSUTF8StringEncoding error:NULL];
    
        //return 0;
       
    NSError *error = NULL;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"Syria" options:NSRegularExpressionCaseInsensitive error:&error];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:txtFileContents options:0 range:NSMakeRange(0, [txtFileContents length])];
    NSLog(@"Found Syria word: %i times",numberOfMatches);
    
    //MOSCOW
    NSRegularExpression *reg1 = [NSRegularExpression regularExpressionWithPattern:@"MOSCOW" options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSUInteger MatchesOfMOSCOW = [reg1 numberOfMatchesInString:txtFileContents options:0 range:NSMakeRange(0, [txtFileContents length])];
    NSLog(@"Found MOSCOW word: %i times", MatchesOfMOSCOW);
    
    //State
    NSRegularExpression *regState = [NSRegularExpression regularExpressionWithPattern:@"State" options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSUInteger MatchesOfregState = [regState numberOfMatchesInString:txtFileContents options:0 range:NSMakeRange(0, [txtFileContents length])];
    NSLog(@"Found State word: %i times", MatchesOfregState);
    
    //Russia
    NSRegularExpression *regRussia = [NSRegularExpression regularExpressionWithPattern:@"Russia" options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSUInteger MatchesOfRussia = [regRussia numberOfMatchesInString:txtFileContents options:0 range:NSMakeRange(0, [txtFileContents length])];
    NSLog(@"Found Russia word: %i times", MatchesOfRussia);
    
    //Security Council
    NSRegularExpression *regCouncil = [NSRegularExpression regularExpressionWithPattern:@"Security Council" options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSUInteger MatchesOfCouncil = [regCouncil numberOfMatchesInString:txtFileContents options:0 range:NSMakeRange(0, [txtFileContents length])];
    NSLog(@"Found Security Council word: %i times", MatchesOfCouncil);

}

@end
