//
//  IGViewController.h
//  mementomori
//
//  Created by Vanger on 30.09.12.
//  Copyright (c) 2012 XP.Guild. All rights reserved.
//

extern NSString *KEY_FOR_BIRTHDATE;

#import <UIKit/UIKit.h>

@interface IGViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)setBirthDate:(id)sender;

@end
