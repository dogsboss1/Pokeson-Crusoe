//
//  Store.h
//  pokeson Crusoe
//
//  Created by felix king on 23/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Store : NSObject

@property NSString *name;
@property NSString *image_fileName;
@property NSInteger cost;
@property NSInteger defence;
@property NSInteger offence;

+ (Store *)randomStoreProduct;


@end
