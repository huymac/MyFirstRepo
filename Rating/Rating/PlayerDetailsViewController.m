//
//  PlayerDetailsViewController.m
//  Rating
//
//  Created by HuyTrac on 11/06/2014.
//  Copyright (c) Năm 2014 HuyTrac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"
#import "Player.h"

@interface PlayerDetailsViewController ()
@end

@implementation PlayerDetailsViewController

NSString *_game;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.detailLabel.text = _game;
}


- (IBAction)cancel:(id)sender
{
    [self.delegate playerDetailsViewControllerDidCancel:self];
}

- (IBAction)done:(id)sender
{
    //[self.delegate playerDetailsViewControllerDidSave:self];
    
//    Player *player = [[Player alloc] init];
//    player.name = self.nameTextfield.text;
//    player.game = @"Chess";
//    player.rating = 1;
//    [self.delegate playerDetailsViewController:self didAddPlayer:player];
    Player *player = [[Player alloc] init];
    player.name = self.nameTextfield.text;
    player.game = _game;  // only this line is changed
    player.rating = 1;
    
    [self.delegate playerDetailsViewController:self didAddPlayer:player];
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"PickGame"]) {
        GamePickerViewController *gamePickerViewController = segue.destinationViewController;
        gamePickerViewController.delegate = self;
        gamePickerViewController.game = _game;
    }
}

- (void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game
{
    _game = game;
    self.detailLabel.text = _game;
    
    [self.navigationController popViewControllerAnimated:YES];
}




- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        [self.nameTextfield becomeFirstResponder];
    }
}


- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder])) {
        NSLog(@"init PlayerDetailsViewController");
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"dealloc PlayerDetailsViewController");
}

@end

