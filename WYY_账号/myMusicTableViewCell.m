//
//  myMusicTableViewCell.m
//  WYY_账号
//
//  Created by 王一卓 on 2018/7/24.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "myMusicTableViewCell.h"

@implementation myMusicTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.label1 = [[UILabel alloc] init];
        [self.contentView addSubview:_label1];
        
        self.label1 = [[UILabel alloc] init];
        [self.contentView addSubview:_label1];
        
        self.label1 = [[UILabel alloc] init];
        [self.contentView addSubview:_label1];
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _label1.frame = CGRectMake(0, 20, 50, 50);
    _label1.backgroundColor = [UIColor blackColor];
    _label1.textColor = [UIColor whiteColor];
    
    _label2.frame = CGRectMake(30, 20, 50, 50);
    _label2.backgroundColor = [UIColor yellowColor];
    _label2.textColor = [UIColor whiteColor];
    
    _label3.frame = CGRectMake(60, 20, 50, 50);
    _label3.backgroundColor = [UIColor blackColor];
    _label3.textColor = [UIColor whiteColor];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
