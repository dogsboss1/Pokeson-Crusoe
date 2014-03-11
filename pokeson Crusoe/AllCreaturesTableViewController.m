//
//  AllCreaturesTableViewController.m
//  pokeson Crusoe
//
//  Created by felix king on 9/03/2014.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import "AllCreaturesTableViewController.h"
#import "PokesonPopulation.h"
#import "Pokeson.h"

@interface AllCreaturesTableViewController ()

@property (nonatomic) PokesonPopulation *population;

@end

@implementation AllCreaturesTableViewController


//-----------------------------------------------------------------------
#pragma mark -- Getters --
//-----------------------------------------------------------------------
- (PokesonPopulation *)population {
    if (!_population) _population = [[PokesonPopulation alloc] init];
    return _population;
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
    return [self.population.allPokesons count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView
        dequeueReusableCellWithIdentifier:@"CreatureCell"
        forIndexPath:indexPath];
    
    Pokeson *p = [self.population.allPokesons objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", p.emotionText, p.name];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ HP, %@ happy",
                                 @(p.hitpoints), @(p.happiness)];
    cell.imageView.image = [UIImage imageNamed:p.image_fileName];
    
    return cell;
}



@end
