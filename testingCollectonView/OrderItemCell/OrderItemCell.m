//
//  OrderItemCell.m
//  Fashory
//
//  Created by tchin on 9/15/2558 BE.
//  Copyright (c) 2558 Fashory. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "OrderItemCell.h"

@implementation OrderItemCell

@synthesize productImageView, titleLabel, subTitleLabel, priceLabel, quantityLabel,sizeLabel;

- (void)awakeFromNib {
    // Initialization code
}

#pragma mark - Memory Management
- (void)dealloc {
    
    self.productImageView = nil;
    self.titleLabel = nil;
    self.subTitleLabel = nil;
    self.priceLabel = nil;
    self.quantityLabel = nil;
    self.sizeLabel = nil;
}

#pragma mark - Public Methods
- (void)setup:(NSInteger)aRow {
    
    // Title
    self.titleLabel.text = @"abc";
}

@end
