//
//  PokesonEquipment.h
//  pokeson Crusoe
//
//  Created by Felix King on 3/18/14.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PokesonEquipmentType) {
    PokesonEquipmentTypeWeapon,
    PokesonEquipmentTypeRing,
    PokesonEquipmentTypeArmour
};

@interface PokesonEquipment : NSObject

@property NSString *name;
@property NSString *shortdesciption;
@property PokesonEquipmentType type;

+ (NSArray *)allAvailableEquipment;
+ (NSArray *)allAvailableEquipmentWithType:(PokesonEquipmentType)type;
+ (NSInteger)quantityOfEquipmentWithType:(PokesonEquipmentType)type;

@end
