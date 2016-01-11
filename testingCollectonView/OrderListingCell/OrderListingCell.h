//
//  OrderListingCell.h
//  Fashory
//
//  Created by FASHORY on 7/9/15.
//  Copyright (c) 2015 Fashory. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface OrderListingCell : UITableViewCell<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (retain, nonatomic) IBOutlet UILabel *orderNumberLabel;
@property (retain, nonatomic) IBOutlet UILabel *orderPlacedLabel;
@property (retain, nonatomic) IBOutlet UICollectionView *productCollectionView;

- (void)setup;

@end