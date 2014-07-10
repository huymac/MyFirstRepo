//
//  PlayersViewController.h
//  Rating
//
//  Created by HuyTrac on 10/06/2014.
//  Copyright (c) Năm 2014 HuyTrac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"


@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *players;

@end