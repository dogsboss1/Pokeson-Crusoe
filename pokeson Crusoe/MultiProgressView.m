//
//  MultiProgressBar.m
//  pokeson Crusoe
//
//  Created by felix king on 9/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "MultiProgressView.h"

@implementation MultiProgressView




- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
  
    CGContextSetFillColorWithColor(context, [[UIColor redColor] CGColor]);
    CGContextFillEllipseInRect(context, rect);
}


@end
