//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Rockstar. on 3/18/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"

@interface TopViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation TopViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    NSMutableArray *mainArray = [NSMutableArray arrayWithObjects: [UIImage imageNamed:@"tigerOne"], [UIImage imageNamed:@"tigerTwo"], [UIImage imageNamed:@"tigerThree"], nil];
    self.photosArray = mainArray;
}


#pragma mark - UICollectionViewCellDataSource
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.cellImageView.image = self.photosArray[indexPath.row];
    cell.layer.borderColor = [UIColor colorWithRed:0.23 green:0.47 blue:0.85 alpha:1.00].CGColor;
    cell.layer.borderWidth = 1.5;
    cell.layer.cornerRadius = 20;
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.photosArray.count;
}


#pragma mark - Actions
- (IBAction)onPanelButtonTapped:(id)sender {
    [self.delegate topRevealButtonTapped];
}

@end
