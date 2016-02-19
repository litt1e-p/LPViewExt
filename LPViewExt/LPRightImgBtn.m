//
//  LPRightImgBtn.m
//
//  Created by litt1e-p on 16/2/18.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "LPRightImgBtn.h"

@implementation LPRightImgBtn

@synthesize rightImgAlignment = _rightImgAlignment;

static CGFloat const kRightImgBtnTitleMargin = 5.f;

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGRect titleFrame = [self titleLabel].frame;
    CGRect imageFrame = [self imageView].frame;
    
    switch (self.rightImgAlignment) {
        case RightImgAlignmentRight:
            imageFrame.origin.x = self.frame.size.width - imageFrame.size.width;
            titleFrame.origin.x = 0;
            break;
            
        case RightImgAlignmentCenter:
            imageFrame.origin.x = titleFrame.size.width + (self.frame.size.width - titleFrame.size.width - imageFrame.size.width) / 2;
            titleFrame.origin.x = 0;
            break;
            
        default:
            imageFrame.origin.x = self.frame.size.width - imageFrame.size.width;
            titleFrame.origin.x = imageFrame.origin.x - titleFrame.size.width - kRightImgBtnTitleMargin;
            break;
    }
    self.imageView.frame  = imageFrame;
    self.titleLabel.frame = titleFrame;
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

- (void)setRightImgAlignment:(RightImgAlignment)rightImgAlignment
{
    _rightImgAlignment = rightImgAlignment;
    [self setNeedsLayout];
}

- (RightImgAlignment)rightImgAlignment
{
    return _rightImgAlignment ? : RightImgAlignmentLeft;
}

@end
