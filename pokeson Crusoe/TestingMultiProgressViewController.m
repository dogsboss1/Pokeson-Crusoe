//
//  PokesonViewController.m
//  pokeson Crusoe
//
//  Created by felix king on 9/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "TestingMultiProgressViewController.h"

@interface TestingMultiProgressViewController ()

@end

@implementation TestingMultiProgressViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(CGFloat) randomSingleFloat {
    return arc4random_uniform(50) / 50.0;

}

//-----------------------------------------------------------------------
#pragma mark -- MultiProgressViewDelagate --
//-----------------------------------------------------------------------


- (CGFloat)valueOfAttributeWithIndex:(NSInteger)index {
    return arc4random_uniform(50) / 50.0;
}

- (NSInteger)numberOfAttributes {
    return 55;
}

- (UIColor *)colorOfAttributeWithIndex:(NSInteger)index {
    CGFloat hue = index / (float)[self numberOfAttributes];
    return [UIColor colorWithHue:hue
                      saturation:0.8
                      brightness:0.8
                           alpha:1];
}

- (MultiProgressViewDisplayStyle)displayStyle {
    return MultiProgressViewDisplayStyleLeftToRight;
}

@end
