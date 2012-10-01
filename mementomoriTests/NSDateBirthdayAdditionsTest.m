//
//  NSDateBirthdayAdditionsTest.m
//  mementomori
//
//  Created by Vanger on 09/30/12.
//Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSDateBirthdayAdditionsTest.h"
#import "NSDate+Additions.h"

@implementation NSDateBirthdayAdditionsTest
@synthesize earlierDate = _earlierDate;
@synthesize date = _date;


- (void)setUp {
	[super setUp];  //TODO: implement

	self.earlierDate = ([NSDate dateWithDay:30 month:9 year:2012]);
	self.date = ([NSDate dateWithDay:4 month:10 year:2012]);
}

- (void)tearDown {
	self.earlierDate = nil;
	self.date = nil;
	[super tearDown];  //TODO: implement
}


- (void)test_Should_Earlier_Status {
	STAssertTrue([self.earlierDate isEarlier:self.date], @"");
}

- (void)test_Should_Return_Not_Is_Earlier_Status {
	STAssertFalse([self.date isEarlier:self.earlierDate], @"");
}

- (void)test_Should_Return_Next_Birthday_By_Current_Date {
	NSDate *expectedBirthdate = [NSDate dateWithDay:4 month:10 year:2012];

	NSDate *actualDate = [self.earlierDate nextBirthdayForBirthdate:expectedBirthdate];
	STAssertEqualObjects(actualDate, expectedBirthdate, @"");
}

- (void)test_Should_Return_Days_Count_Between_Dates {
	NSInteger actualDaysCount = [self.earlierDate daysToDate:self.date];

	NSInteger expectedDaysCount = 4;
	STAssertEquals(actualDaysCount, expectedDaysCount, @"");
}

@end
