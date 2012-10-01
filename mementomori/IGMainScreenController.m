//
//  IGMainScreenController.m
//  mementomori
//
//  Created by Vanger on 30.09.12.
//  Copyright (c) 2012 XP.Guild. All rights reserved.
//

#import "IGMainScreenController.h"
#import "IGViewController.h"
#import "NSDate+Additions.h"

@interface IGMainScreenController ()
- (void)showTimeLeftFrom:(NSDate *)fromDate toDate:(NSDate *)toDate;

@end

@implementation IGMainScreenController
@synthesize timeLeftLabel;

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
    
    //TODO: replace magic string with constant
    NSDate *birthdate = [[NSUserDefaults standardUserDefaults] objectForKey:KEY_FOR_BIRTHDATE];

    NSDate *nextBirthday = [[NSDate date] nextBirthdayForBirthdate:birthdate];
    NSLog(@"nextBD: %@", [nextBirthday description]);
    [self showTimeLeftFrom:[NSDate date] toDate:nextBirthday];
}

- (void)showTimeLeftFrom:(NSDate *)fromDate toDate:(NSDate *)toDate {
    [timeLeftLabel setText:[NSString stringWithFormat:@"%d дней", [fromDate daysToDate:toDate]]];
}

- (void)viewDidUnload
{
    [self setTimeLeftLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [timeLeftLabel release];
    [super dealloc];
}
@end
