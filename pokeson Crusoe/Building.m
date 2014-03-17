//
//  Building.m
//  pokeson Crusoe
//
//  Created by Felix King on 3/12/14.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "Building.h"

@implementation Building

- (id)init
{
    self = [super init];
    if (self) {
        self.name = @"";
        self.level = 0;
        self.maxLevel = 0;
        self.type = buildingTypeCore;
        self.completionProgress = arc4random_uniform(100) / 100.0;
        
        if (arc4random_uniform(2) == 0) {
            self.completionProgress =1;
        }
    }
    return self;
}

+(Building *)buildingWithName:(NSString *)name type:(buildingType)type
{
    Building *building = [[Building alloc] init];
    building.name = name;
    building.type = type;
    return building;
}

- (BOOL)isConstructionComplete
{
    if (self.completionProgress == 1) {
        return YES;
    } else {
        return NO;
    }
}

@end
