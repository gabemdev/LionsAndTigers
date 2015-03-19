//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Rockstar. on 3/18/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate <NSObject>

- (void)tigersButtonTapped;
- (void)lionsButtonTapped;

@end


@interface HUDViewController : UIViewController
@property (nonatomic, assign) id <HUDDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIButton *lionButton;
@property (weak, nonatomic) IBOutlet UIButton *tigerButton;

@end
