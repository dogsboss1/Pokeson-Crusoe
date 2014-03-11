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
    MultiProgressViewDisplayStyle style = [self.delagate displayStyle];
    
    NSInteger numberOfAttributes = [self.delagate numberOfAttributes];
    CGFloat height = masterRect.size.height / numberOfAttributes;
    
    for (NSInteger i=0; i <numberOfAttributes; i+=1) {
        CGFloat width = [self.delagate valueOfAttributeWithIndex:i] * masterRect.size.width;
        CGRect rect;
        
        if (style == MultiProgressViewDisplayStyleLeftToRight) {
        rect = CGRectMake(masterRect.origin.x,
                          masterRect.origin.y + i * height,
                          width,
                          height);
        } else if (style == MultiProgressViewDisplayStyleRightToLeft) {
        rect = CGRectMake(masterRect.size.width - width,
                          masterRect.origin.y + i * height,
                          width,
                          height);
        }
        CGContextSetFillColorWithColor(context, [[self.delagate colorOfAttributeWithIndex:i] CGColor]);
        CGContextFillRect(context, rect);
    }
}


@end
