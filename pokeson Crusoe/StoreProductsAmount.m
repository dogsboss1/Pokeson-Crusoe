//
//  StoreProductsAmount.m
//  pokeson Crusoe
//
//  Created by felix king on 23/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "StoreProductsAmount.h"
#import "Store.h"

@implementation StoreProductsAmount

-(NSMutableArray *)allProducts {
    
    if (!_allProducts) {
        _allProducts =[[NSMutableArray alloc] init];
        for (NSInteger i = 0; i < 10; i += 1) {
            [_allProducts addObject:[Store randomStoreProduct]];
        }
    }
    return _allProducts;
}

@end
