//
//  PlayerCell.h
//  Rating
//
//  Created by HuyTrac on 11/06/2014.
//  Copyright (c) Năm 2014 HuyTrac. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h> 

@interface PlayerCell: UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *gameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *ratingImageView;

@end
