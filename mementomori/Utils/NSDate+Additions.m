//
// Created by vanger on 30.09.12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSDate+Additions.h"


@implementation NSDate (Additions)

- (BOOL)isEarlier:(NSDate *)toCompare {
	NSComparisonResult result = [self compare:toCompare];
	if (result == NSOrderedAscending) {
		return YES;
	}
	return NO;
}

- (NSDate *)nextBirthdayForBirthdate:(NSDate *)birthdate {
	NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSDateComponents *oneYear = [[NSDateComponents alloc] init];
	[oneYear setYear:1];

	NSDate *nextBirthday = birthdate;
	while ([nextBirthday isEarlier:self]) {
		nextBirthday = [gregorian dateByAddingComponents:oneYear
												  toDate:nextBirthday
												 options:0];
	}

	[oneYear release];
	[gregorian release];
	return nextBirthday;
}

+ (NSDate *)dateWithDay:(int)day month:(int)month year:(short)year {
	NSDateComponents *components = [[[NSDateComponents alloc] init] autorelease];
	[components setDay:day];
	[components setMonth:month];
	[components setYear:year];

	NSCalendar *gregorian = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];

	NSDate *result = [gregorian dateFromComponents:components];
	return result;
}

- (int)daysToDate:(NSDate *)date {
	const NSTimeInterval timeInterval = [date timeIntervalSinceDate:self];

    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
	int result = (int) (timeInterval / 60 / 60 / 24) + 1;

	[dateComponents release];
	[calendar release];
	return result;
}


@end