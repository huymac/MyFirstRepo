//
//  Player.h
//  Rating
//
//  Created by HuyTrac on 10/06/2014.
//  Copyright (c) Năm 2014 HuyTrac. All rights reserved.
//


#import <Foundation/Foundation.h>


@interface Player : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *game;
@property (nonatomic, assign) int rating;

@end
