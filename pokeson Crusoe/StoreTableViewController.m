//
//  StoreTableViewController.m
//  pokeson Crusoe
//
//  Created by felix king on 23/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "StoreTableViewController.h"
#import "Store.h"
#import "StoreProductsAmount.h"

@interface StoreTableViewController ()
@property (nonatomic) StoreProductsAmount *products;

# define PRODUCTS_SELECTABLE_AT_ONCE 1

@property (nonatomic) NSMutableArray *selectedProducts;

@end

@implementation StoreTableViewController

//-----------------------------------------------------------------------
#pragma mark -- Getters --
//-----------------------------------------------------------------------

-(StoreProductsAmount *)products {
    if (!_products) _products = [[StoreProductsAmount alloc] init];
    return _products;
}

-(NSMutableArray *)selectedProducts {
    if (!_selectedProducts) _selectedProducts = [[NSMutableArray alloc] init];
    return _selectedProducts;
}

//-----------------------------------------------------------------------
#pragma mark -- Table view data source --
//-----------------------------------------------------------------------


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [self.products.allProducts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:@"ProductCell"
                             forIndexPath:indexPath];
    
    Store *s = [self.products.allProducts objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", s.name];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ Defence, %@ Offence, %@ Cost", @(s.defence), @(s.offence), @(s.cost)];
    cell.imageView.image = [UIImage imageNamed:s.image_fileName];
    
    if ([self.selectedProducts containsObject:s]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
     Store *s = [self.products.allProducts objectAtIndex:indexPath.row];
    if ([self.selectedProducts containsObject:s]) {
        [self.selectedProducts removeObject:s];
        [self.tableView reloadData];
}
    else if([self.selectedProducts count] < PRODUCTS_SELECTABLE_AT_ONCE) {
        [self.selectedProducts addObject:s];
        [self.tableView reloadData];
 }
 }
 
 @end
