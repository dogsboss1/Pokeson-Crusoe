//
//  Pokeson.h
//  pokeson Crusoe
//
//  Created by felix king on 9/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pokeson : NSObject

@property NSString *name;
@property NSString *image_fileName;
@property NSInteger hitpoints;
@property NSInteger happiness;

+ (Pokeson *)randomPokeson;

@end
