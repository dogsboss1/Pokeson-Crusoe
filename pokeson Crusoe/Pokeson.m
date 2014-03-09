//
//  Pokeson.m
//  pokeson Crusoe
//
//  Created by felix king on 9/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "Pokeson.h"

@implementation Pokeson

+ (Pokeson *)randomPokeson {
    Pokeson *p = [[Pokeson alloc] init];
    if (arc4random_uniform(3) < 2) {
        p.name = @"Bateson";
        p.hitpoints = 30;
        p.happiness = 80;
        p.image_fileName = @"dinosaur";
    } else {
        p.name = @"Evil bat pokeson";
        p.hitpoints = 1000;
        p.happiness = 10;
        p.image_fileName = @"bat thing";
    }
    return p;
}


@end
