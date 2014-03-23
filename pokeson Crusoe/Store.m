//
//  Store.m
//  pokeson Crusoe
//
//  Created by felix king on 23/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "Store.h"

@implementation Store

+ (Store *)randomStoreProduct {
    Store *s = [[Store alloc] init];
    NSInteger randStoreProduct = arc4random_uniform(5);
    
    if (randStoreProduct == 0) {
        s.name = @"Dineson";
        s.cost = 20 + arc4random_uniform(30);
        s.defence = 30 + arc4random_uniform(30);
        s.offence = 30 + arc4random_uniform(30);
        s.image_fileName = @"dinosaur";
    } else if (randStoreProduct == 1) {
        s.name = @"Evil bat pokeson";
        s.cost = 700 + arc4random_uniform(400);
        s.defence = 3 + arc4random_uniform(9);
        s.offence = 30 + arc4random_uniform(30);
        s.image_fileName = @"bat thing";
    } else if (randStoreProduct == 2) {
        s.name = @"Evil bat pokeson";
        s.cost = 700 + arc4random_uniform(400);
        s.defence = 3 + arc4random_uniform(9);
        s.offence = 30 + arc4random_uniform(30);
        s.image_fileName = @"bat thing";
    } else if (randStoreProduct == 3) {
        s.name = @"Evil bat pokeson";
        s.cost = 700 + arc4random_uniform(400);
        s.defence = 3 + arc4random_uniform(9);
        s.offence = 30 + arc4random_uniform(30);
        s.image_fileName = @"bat thing";
    } else if (randStoreProduct == 4) {
        s.name = @"Evil bat pokeson";
        s.cost = 700 + arc4random_uniform(400);
        s.defence = 3 + arc4random_uniform(9);
        s.offence = 30 + arc4random_uniform(30);
        s.image_fileName = @"bat thing";
    } else if (randStoreProduct == 5) {
        s.name = @"Evil bat pokeson";
        s.cost = 700 + arc4random_uniform(400);
        s.defence = 3 + arc4random_uniform(9);
        s.offence = 30 + arc4random_uniform(30);
        s.image_fileName = @"bat thing";
    }
    return s;
}

@end
