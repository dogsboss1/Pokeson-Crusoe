//
//  PokesonPopullation.m
//  pokeson Crusoe
//
//  Created by felix king on 9/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "PokesonPopulation.h"
#import "Pokeson.h"

@implementation PokesonPopulation

-(NSMutableArray *)allPokesons {
    if (!_allPokesons){
        _allPokesons = [[NSMutableArray alloc] init];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];
        [_allPokesons addObject:[Pokeson randomPokeson]];

    }
    return _allPokesons;
}

@end
