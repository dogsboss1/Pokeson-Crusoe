//
//  Building.h
//  pokeson Crusoe
//
//  Created by Felix King on 3/12/14.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, buildingType) {
    buildingTypeCore,
    buildingTypeSpeacial
};

@interface Building : NSObject

@property NSString* name;
@property buildingType type;
@property NSInteger level;
@property NSInteger maxLevel;

@property (readonly) BOOL isConstructionComplete;
@property CGFloat completionProgress;

+ (Building *)buildingWithName:(NSString *)name type:(buildingType)type;

@end
