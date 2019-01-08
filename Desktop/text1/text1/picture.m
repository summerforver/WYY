//
//  picture.m
//  text1
//
//  Created by 王一卓 on 2018/9/16.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "picture.h"

@implementation picture

- (instancetype)init {
    self = [super init];
    if (self) {
        self.pictureImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 10, 150, 120)];
        self.pictureImageView.layer.masksToBounds = YES;
        self.pictureImageView.layer.cornerRadius = 8;
        [self addSubview:self.pictureImageView];
        
        self.textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 130, 150, 50)];
        self.textView.font = [UIFont systemFontOfSize:14.0];
        [self addSubview:self.textView];
        
        self.view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 15, 180)];
        
        [self addSubview:self.view1];
        
        
        
    }
    return self;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
