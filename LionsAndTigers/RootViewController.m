//
//  RootViewController.m
//  LionsAndTigers
//
//  Created by Rockstar. on 3/18/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

#define RIGHTCONSTANTDRAG 116
#define LEFTCONSTANTDRAG -132
#define ORIGINAL -16

@interface RootViewController ()<TopDelegate, HUDDelegate>

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *rightLayoutConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *leftLayoutConstraint;
@property (weak, nonatomic) IBOutlet UIView *topContainer;
@property (nonatomic) TopViewController *topViewController;
@property (nonatomic) HUDViewController *hudViewController;
@property (nonatomic, weak) NSMutableArray *tigersArray;
@property (nonatomic, weak) NSMutableArray *lionsArray;

@end

@implementation RootViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.topViewController.delegate = self;
    self.hudViewController.delegate = self;
}


- (void)topRevealButtonTapped {
    [UIView animateWithDuration:0.5 animations:^{
        if (self.leftLayoutConstraint.constant == ORIGINAL) {
            self.leftLayoutConstraint.constant = self.leftLayoutConstraint.constant + RIGHTCONSTANTDRAG;
            NSLog(@"%f", self.leftLayoutConstraint.constant);
            self.rightLayoutConstraint.constant = LEFTCONSTANTDRAG;
        } else {
            self.leftLayoutConstraint.constant = ORIGINAL;
            self.rightLayoutConstraint.constant = ORIGINAL;
        }
        [self.view layoutIfNeeded];
    }];
}

- (void)tigersButtonTapped {
    self.tigersArray = [NSMutableArray arrayWithObjects:
                        [UIImage imageNamed:@"tigerOne"],
                        [UIImage imageNamed:@"tigerTwo"],
                        [UIImage imageNamed:@"tigerThree"], nil];

    self.topViewController.photosArray = self.tigersArray;
    [self.topViewController.imageCollectionView reloadData];
    [self topRevealButtonTapped];

}

- (void)lionsButtonTapped {
    self.lionsArray = [NSMutableArray arrayWithObjects:
                       [UIImage imageNamed:@"lionOne"],
                       [UIImage imageNamed:@"lionTwo"],
                       [UIImage imageNamed:@"lionThree"], nil];
    self.topViewController.photosArray = self.lionsArray;
    [self.topViewController.imageCollectionView reloadData];
    [self topRevealButtonTapped];
   

}

#pragma mark - Segue
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"topContainer"]) {

        UINavigationController *topNav = segue.destinationViewController;
        self.topViewController = topNav.viewControllers[0];
    }
    else if ([segue.identifier isEqualToString:@"HUDContainer"]) {
        self.hudViewController = segue.destinationViewController;
    }
}

@end
