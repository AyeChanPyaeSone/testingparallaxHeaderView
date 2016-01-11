//
//  ViewController.m
//  testingCollectonView
//
//  Created by FASHORY on 11/1/16.
//  Copyright © 2016 acps. All rights reserved.
//

#import "ViewController.h"
#import "OrderListingCell.h"
#import "OrderItemCell.h"
#import "ParallaxHeaderView.h"

@interface ViewController()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView *subView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 300)];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    imageView.image=  [UIImage imageNamed:@"2668.jpg"];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [imageView setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    [imageView setClipsToBounds:YES];
    
    UILabel *fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(91, 15, 120, 120)];
    fromLabel.text = @"ABCD";
    fromLabel.numberOfLines = 1;
    fromLabel.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
    fromLabel.adjustsFontSizeToFitWidth = YES;
    fromLabel.minimumScaleFactor = 10.0f/12.0f;
    fromLabel.clipsToBounds = YES;
    fromLabel.backgroundColor = [UIColor clearColor];
    fromLabel.textColor = [UIColor blackColor];
    fromLabel.textAlignment = NSTextAlignmentLeft;
    
    [subView addSubview:imageView];
    [subView addSubview:fromLabel];
    
    // Create ParallaxHeaderView with specified size, and set it as uitableView Header, that's it
    ParallaxHeaderView *headerView = [ParallaxHeaderView parallaxHeaderViewWithSubView:subView];
    headerView.headerImage = [UIImage imageNamed:@"2668.jpg"];
    
    [self.tableView setTableHeaderView:headerView];
    
    [self.tableView reloadData];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [(ParallaxHeaderView *)self.tableView.tableHeaderView refreshBlurViewForNewImage];
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UITableViewDataSource Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 12;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 452;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"OrderListingCell";
    static NSString *cellNib = @"OrderListingCell";
    
    // Get the cell template.
    OrderListingCell *cell = (OrderListingCell *)[self.tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        [[NSBundle mainBundle] loadNibNamed:cellNib owner:self options:nil];
        cell = self.orderListingCell;
        self.orderListingCell = nil;
    }
    
    [cell setup];
    //Set selection style as None
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}

@end
