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

@end

@implementation StoreTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 0;
}


@end
