//
//  OrderItemCell.h
//  Fashory
//
//  Created by tchin on 9/15/2558 BE.
//  Copyright (c) 2558 Fashory. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Product;

@interface OrderItemCell : UICollectionViewCell

@property (nonatomic, retain) IBOutlet UIImageView *productImageView;
@property (nonatomic, retain) IBOutlet UILabel *titleLabel;
@property (nonatomic, retain) IBOutlet UILabel *subTitleLabel;
@property (nonatomic, retain) IBOutlet UILabel *priceLabel;
@property (nonatomic, retain) IBOutlet UILabel *quantityLabel;
@property (nonatomic, retain) IBOutlet UILabel *sizeLabel;

// Public Methods
- (void)setup:(NSInteger)aRow;

@end
