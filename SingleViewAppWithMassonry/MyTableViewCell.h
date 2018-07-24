//
//  MyTableViewCell.h
//  SingleViewAppWithMassonry
//
//  Created by 李文友 on 2018/5/29.
//  Copyright © 2018年 李文友. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell

@property (strong, nonatomic) UILabel *totalAmountTitleLabel;
@property (strong, nonatomic) UILabel *receivedAmountTitleLLabel;
@property (strong, nonatomic) UILabel *preReceivedAmountTitleLLabel;
@property (strong, nonatomic) UIImageView *icomImageView;
@property (strong, nonatomic) UIButton *actionButton;

@property (strong, nonatomic) UILabel *totalAmountLabel;
@property (strong, nonatomic) UILabel *receivedAmountLabel;
@property (strong, nonatomic) UILabel *preReceivedAmountLabel;

@end
