//
//  BuildingCell.h
//  pokeson Crusoe
//
//  Created by Felix King on 3/12/14.
//  Copyright (c) 2014 Felix King. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BuildingCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *levelLabel;
@property (weak, nonatomic) IBOutlet UIProgressView *completionProgressView;



@end
