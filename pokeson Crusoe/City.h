//
//  City.h
//  pokeson Crusoe
//
//  Created by Felix King on 3/12/14.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Building.h"

@interface City : NSObject

@property NSMutableArray* buildings;

- (void)constructionBuilding:(Building *)building;

-(NSArray *)buildingOfType:(buildingType)type;

@end
