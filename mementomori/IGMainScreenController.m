//
//  IGMainScreenController.m
//  mementomori
//
//  Created by Vanger on 30.09.12.
//  Copyright (c) 2012 XP.Guild. All rights reserved.
//

#import "IGMainScreenController.h"
#import "IGViewController.h"

#import "NSDate+MTDates.h"
#import "IGCircleView.h"

@interface IGMainScreenController ()
- (void)showTimeLeftToNextYear;
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
    [self showTimeLeftToNextYear];
    
    
//    IGCircleView *circleView = [[IGCircleView alloc] init];
    
    
    
//    circleView.center = self.view.center;
    
//    [self.view addSubview:circleView];
    
//    [circleView release];


//    [self showTimeLeftFrom:[NSDate date] toDate:nextBirthday];
}

- (void)showTimeLeftToNextYear {
    NSDate *currentDate = [NSDate date];
    NSDate *nextYear = [currentDate startOfNextYear];
    
    
    
    [timeLeftLabel setText:[NSString stringWithFormat:@"%d дней", [currentDate daysUntilDate:nextYear]] ];
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
