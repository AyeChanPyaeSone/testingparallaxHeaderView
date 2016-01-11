//
//  OrderListingCell.m
//  Fashory
//
//  Created by FASHORY on 7/9/15.
//  Copyright (c) 2015 Fashory. All rights reserved.
//
#import "OrderListingCell.h"
#import "OrderItemCell.h"

@implementation OrderListingCell

@synthesize orderNumberLabel,productCollectionView;

- (void)awakeFromNib {
    // Initialization code
    [self.productCollectionView registerClass:[OrderItemCell class] forCellWithReuseIdentifier:@"OrderItemCell"];
    UINib *cellNib = [UINib nibWithNibName:@"OrderItemCell" bundle:nil];
    [self.productCollectionView registerNib:cellNib forCellWithReuseIdentifier:@"OrderItemCell"];
    self.productCollectionView.pagingEnabled = YES;
    self.productCollectionView.scrollEnabled = YES;
    self.productCollectionView.dataSource = self;
    self.productCollectionView.delegate = self;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

#pragma mark - Public Methods
- (void)setup
{
    //Order Number
    self.orderNumberLabel.text = @"abc";
    
    [self.productCollectionView reloadData];
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)aCollectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    OrderItemCell *cell = (OrderItemCell *) [aCollectionView dequeueReusableCellWithReuseIdentifier:@"OrderItemCell" forIndexPath:indexPath];
    [cell setup:indexPath.row];
    return cell;
}

@end