//
//  City.m
//  pokeson Crusoe
//
//  Created by Felix King on 3/12/14.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "City.h"

@implementation City
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.buildings = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)buildingOfType:(buildingType)type
{
    NSMutableArray *buildingsOfType = [[NSMutableArray alloc] init];
    
    for (Building *building in self.buildings) {
        if (building.type == type) {
            [buildingsOfType addObject:building];
        }
    }
    
    return buildingsOfType;
}

-(void)constructionBuilding:(Building *)building
{
    [self.buildings addObject:building];
}

@end
