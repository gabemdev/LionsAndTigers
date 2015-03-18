//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Rockstar. on 3/18/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopDelegate <NSObject>

- (void)topRevealButtonTapped;

@end

@interface TopViewController : UIViewController

@property (nonatomic, assign) id <TopDelegate> delegate;

@end
