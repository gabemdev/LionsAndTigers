//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Rockstar. on 3/18/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)lionsButtonTapped {
    [self.delegate lionsButtonTapped];
}


- (IBAction)tigersButtonTapped {
    [self.delegate tigersButtonTapped];
}

@end
