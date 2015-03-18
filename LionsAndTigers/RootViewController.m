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

#define RIGHCONSTANTDRAG 146
#define ORIGINAL -16

@interface RootViewController ()<TopDelegate>

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *leftLayoutConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *rightLayoutConstraint;
@property (weak, nonatomic) IBOutlet UIView *topContainer;

@property TopViewController *topViewController;
@property HUDViewController *hudViewController;

@end

@implementation RootViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    self.topViewController.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)topRevealButtonTapped {
    [UIView animateWithDuration:0.5 animations:^{
        if (self.leftLayoutConstraint.constant == -16) {
            self.leftLayoutConstraint.constant = self.leftLayoutConstraint.constant + RIGHCONSTANTDRAG;
            self.rightLayoutConstraint.constant = -self.leftLayoutConstraint.constant;
        } else {
            self.leftLayoutConstraint.constant = ORIGINAL;
            self.rightLayoutConstraint.constant = ORIGINAL;
        }
        [self.view layoutIfNeeded];
    }];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"topContainer"]) {
        UINavigationController *topNav = segue.destinationViewController;
        self.topViewController = topNav.viewControllers[0];
    }
}

@end
