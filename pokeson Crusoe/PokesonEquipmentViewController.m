//
//  PokesonEquipmentViewController.m
//  pokeson Crusoe
//
//  Created by Felix King on 3/18/14.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "PokesonEquipmentViewController.h"
#import "PokesonEquipment.h"

@interface PokesonEquipmentViewController ()

@end

@implementation PokesonEquipmentViewController

//----------------------------------------------------------
#pragma mark - Table view data source
//----------------------------------------------------------

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 3;
}

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return [PokesonEquipment quantityOfEquipmentWithType:section];
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EquipmentCell" forIndexPath:indexPath];
    NSArray *equipmentOfType = [PokesonEquipment allAvailableEquipmentWithType:indexPath.section];
    PokesonEquipment *equipment = [equipmentOfType objectAtIndex:indexPath.row];
    
    cell.textLabel.text = equipment.name;
    cell.detailTextLabel.text = equipment.shortdesciption;
    
    return cell;
}

@end
