//
//  PokesonViewController.m
//  pokeson Crusoe
//
//  Created by felix king on 9/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "PokesonViewController.h"

@interface PokesonViewController ()

@end

@implementation PokesonViewController

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

//-----------------------------------------------------------------------
#pragma mark -- MultiProgressViewDelagate --
//-----------------------------------------------------------------------


- (CGFloat)valueOfAttributeWithIndex:(NSInteger)index {
    return arc4random_uniform(50) / 50.0;
}

- (NSInteger)numberOfAttributes {
    return 3;
}

@end
