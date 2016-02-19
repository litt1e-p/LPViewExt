//
//  LPRightImgBtn.m
//
//  Created by litt1e-p on 16/2/18.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "LPRightImgBtn.h"

@implementation LPRightImgBtn

static CGFloat const kRightImgBtnTitleMargin = 5.f;

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGRect titleFrame = [self titleLabel].frame;
    titleFrame.origin.x = 0;
    self.titleLabel.frame = titleFrame;
    
    CGRect imageFrame = [self imageView].frame;
    imageFrame.origin.x = titleFrame.size.width + kRightImgBtnTitleMargin;
    self.imageView.frame = imageFrame;
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state
{
    [super setTitle:title forState:state];
    [self sizeToFit];
}

- (void)setImage:(UIImage *)image forState:(UIControlState)state
{
    [super setImage:image forState:state];
    [self sizeToFit];
}

@end
