//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Rockstar. on 3/18/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController ()

@end

@implementation TopViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onPanelButtonTapped:(id)sender {
    [self.delegate topRevealButtonTapped];
    NSLog(@"Button pressed");
}

@end
