//
//  IGCircleView.m
//  mementomori
//
//  Created by Vitaly Ruzhnikov on 02.01.13.
//  Copyright (c) 2013 XP.Guild. All rights reserved.
//

#import "IGCircleView.h"

@implementation IGCircleView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 2.0);
    
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    
    CGRect rectangle = self.bounds;
    CGFloat shift=10;
    CGFloat pointShift = 5;
    CGRect ringRect = CGRectMake(rectangle.origin.x  + pointShift, rectangle.origin.y + pointShift, rectangle.size.width-shift, rectangle.size.height-shift);
    
    CGContextAddEllipseInRect(context, ringRect);

      
    CGFloat circleShift = 0;
    CGRect circleRect = CGRectMake(ringRect.origin.x, ringRect.origin.y, ringRect.size.width - circleShift, ringRect.size.height - circleShift);
    

        
    CGContextStrokePath(context);
    
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextFillEllipseInRect(context, circleRect);
    // Drawing code
}


@end
