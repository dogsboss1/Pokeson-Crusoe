//
//  MultiProgressBar.m
//  pokeson Crusoe
//
//  Created by felix king on 9/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "MultiProgressView.h"


@implementation MultiProgressView




- (void)drawRect:(CGRect)masterRect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
    NSInteger numberOfAttributes = [self.delagate numberOfAttributes];
    CGFloat height = masterRect.size.height / numberOfAttributes;
    
    for (NSInteger i = 0; i <numberOfAttributes; i+=1) {
        CGFloat width = [self.delagate valueOfAttributeWithIndex:i] * masterRect.size.width;
        CGRect rect = CGRectMake(masterRect.origin.x,
                                 masterRect.origin.y + i * height,
                                 width,
                                 height);
        CGContextSetFillColorWithColor(context, [[UIColor redColor] CGColor]);
        CGContextStrokeRect(context, rect);
    }
}


@end
