//
// Created by vanger on 30.09.12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface NSDate (Additions)

- (BOOL)isEarlier:(NSDate *)toCompare;

- (NSDate *)nextBirthdayForBirthdate:(NSDate *)birthdate;

- (int)daysToDate:(NSDate *)date;

+ (NSDate *)dateWithDay:(int)day month:(int)month year:(short)year;

@end