//
//  MultiProgressBar.h
//  pokeson Crusoe
//
//  Created by felix king on 9/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, MultiProgressViewDisplayStyle) {
    MultiProgressViewDisplayStyleLeftToRight,
    MultiProgressViewDisplayStyleRightToLeft,
    MultiProgressViewDisplayStyleBottomUp,
};


@protocol MultiProgressViewDelagate <NSObject>
- (NSInteger) numberOfAttributes;
- (CGFloat) valueOfAttributeWithIndex:(NSInteger)index;
- (UIColor *) colorOfAttributeWithIndex:(NSInteger)index;
- (MultiProgressViewDisplayStyle) displayStyle;
@end

@interface MultiProgressView : UIView

@property IBOutlet id<MultiProgressViewDelagate> delagate;

@end
