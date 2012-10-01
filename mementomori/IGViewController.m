//
//  IGViewController.m
//  mementomori
//
//  Created by Vanger on 30.09.12.
//  Copyright (c) 2012 XP.Guild. All rights reserved.
//

#import "IGViewController.h"

NSString *KEY_FOR_BIRTHDATE = @"birthdate";

@interface IGViewController ()

@end

@implementation IGViewController
@synthesize datePicker;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    datePicker.maximumDate = [NSDate date];
}

- (IBAction)setBirthDate:(id)sender {
    [[NSUserDefaults standardUserDefaults] setObject:datePicker.date
                                              forKey:KEY_FOR_BIRTHDATE];
    NSLog(@"Birthdate: %@", datePicker.date);
}

- (void)viewDidUnload
{
    [self setDatePicker:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [datePicker release];
    [super dealloc];
}
@end
