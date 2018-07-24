//
//  MyTableViewCell.m
//  SingleViewAppWithMassonry
//
//  Created by 李文友 on 2018/5/29.
//  Copyright © 2018年 李文友. All rights reserved.
//

#import "MyTableViewCell.h"

#import <Masonry.h>

@implementation MyTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.totalAmountTitleLabel];
        [self.contentView addSubview:self.totalAmountLabel];
        [self.contentView addSubview:self.receivedAmountTitleLLabel];
        [self.contentView addSubview:self.receivedAmountLabel];
        [self.contentView addSubview:self.preReceivedAmountTitleLLabel];
        [self.contentView addSubview:self.preReceivedAmountLabel];
        [self.contentView addSubview:self.icomImageView];
        [self.contentView addSubview:self.actionButton];
        [self makeConstraints];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
  
}

#pragma mark - buttonAction

- (void)buttonAction:(UIButton *)button {
    
}


#pragma mark - makeConstraints

- (void)makeConstraints {
    
    CGFloat scale = CGRectGetWidth([UIScreen mainScreen].bounds) / 375.f;
    
    [self.totalAmountTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).with.offset(19);
        make.left.equalTo(self.contentView).with.offset(15);
        make.height.equalTo(@12);
    }];
    
    [self.totalAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.totalAmountTitleLabel.mas_bottom).with.offset(12);
        make.left.equalTo(self.contentView).with.offset(15);
        make.height.equalTo(@30);
    }];
    
    [self.receivedAmountTitleLLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.totalAmountLabel.mas_bottom).with.offset(15);
        make.left.equalTo(self.contentView).with.offset(15);
        make.height.equalTo(@12);
    }];
    
    [self.receivedAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.receivedAmountTitleLLabel.mas_bottom).with.offset(12);
        make.left.equalTo(self.contentView).with.offset(15);
        make.height.equalTo(@21);
    }];
    
    [self.preReceivedAmountTitleLLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        CGFloat offset = scale * 180;
        make.top.equalTo(self.totalAmountLabel.mas_bottom).with.offset(15);
        make.left.equalTo(self.contentView).with.offset(offset);
        make.height.equalTo(@12);
    }];
    
    [self.preReceivedAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.preReceivedAmountTitleLLabel.mas_bottom).with.offset(12);
        make.left.equalTo(self.preReceivedAmountTitleLLabel.mas_left).with.offset(15);
        make.height.equalTo(@21);
    }];
    
    [self.icomImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@15);
        make.height.equalTo(@15);
        make.left.equalTo(self.preReceivedAmountLabel.mas_right);
        make.centerY.equalTo(self.preReceivedAmountLabel.mas_centerY);
    }];
    
    [self.actionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@30);
        make.height.equalTo(@30);
        make.centerX.equalTo(self.icomImageView.mas_centerX);
        make.centerY.equalTo(self.icomImageView.mas_centerY);
    }];
}

#pragma mark - getter

- (UILabel *)totalAmountTitleLabel {
    if (!_totalAmountTitleLabel) {
        _totalAmountTitleLabel = [UILabel new];
        _totalAmountTitleLabel.text = @"券商理财总资产（元）";
        _totalAmountTitleLabel.textColor = [UIColor grayColor];
        _totalAmountTitleLabel.font = [UIFont systemFontOfSize:12];
    }
    return _totalAmountTitleLabel;
}

- (UILabel *)totalAmountLabel {
    if (!_totalAmountLabel) {
        _totalAmountLabel = [UILabel new];
        _totalAmountLabel.text = @"50,000.00";
        _totalAmountLabel.textColor = [UIColor blackColor];
        _totalAmountLabel.font = [UIFont systemFontOfSize:30];
    }
    return _totalAmountLabel;
}

- (UILabel *)receivedAmountTitleLLabel {
    if (!_receivedAmountTitleLLabel) {
        _receivedAmountTitleLLabel = [UILabel new];
        _receivedAmountTitleLLabel.text = @"已到收益(元)";
        _receivedAmountTitleLLabel.textColor = [UIColor grayColor];
        _receivedAmountTitleLLabel.font = [UIFont systemFontOfSize:12];
    }
    return _receivedAmountTitleLLabel;
}

- (UILabel *)receivedAmountLabel {
    if (!_receivedAmountLabel) {
        _receivedAmountLabel = [UILabel new];
        _receivedAmountLabel.text = @"270.00";
        _receivedAmountLabel.textColor = [UIColor blackColor];
        _receivedAmountLabel.font = [UIFont systemFontOfSize:21];
    }
    return _receivedAmountLabel;
}

- (UILabel *)preReceivedAmountTitleLLabel {
    if (!_preReceivedAmountTitleLLabel) {
        _preReceivedAmountTitleLLabel = [UILabel new];
        _preReceivedAmountTitleLLabel.text = @"已到收益(元)";
        _preReceivedAmountTitleLLabel.textColor = [UIColor grayColor];
        _preReceivedAmountTitleLLabel.font = [UIFont systemFontOfSize:12];
    }
    return _preReceivedAmountTitleLLabel;
}

- (UILabel *)preReceivedAmountLabel {
    if (!_preReceivedAmountLabel) {
        _preReceivedAmountLabel = [UILabel new];
        _preReceivedAmountLabel.text = @"270.00";
        _preReceivedAmountLabel.textColor = [UIColor blackColor];
        _preReceivedAmountLabel.font = [UIFont systemFontOfSize:21];
    }
    return _preReceivedAmountLabel;
}

- (UIImageView *)icomImageView {
    if (!_icomImageView) {
        _icomImageView = [UIImageView new];
        _icomImageView.image = [UIImage imageNamed:@""];
    }
    return _icomImageView;
}

- (UIButton *)actionButton {
    if (!_actionButton) {
        _actionButton = [UIButton new];
        [_actionButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _actionButton;
}

@end
