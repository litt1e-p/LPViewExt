//
//  LPRightImgBtn.m
//
//  Created by litt1e-p on 16/2/18.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "LPRightImgBtn.h"

@implementation LPRightImgBtn

@synthesize rightImgAlignment = _rightImgAlignment;

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.transform                  = CGAffineTransformMakeScale(-1.0, 1.0);
    self.titleLabel.transform       = CGAffineTransformMakeScale(-1.0, 1.0);
    self.imageView.transform        = CGAffineTransformMakeScale(-1.0, 1.0);
    self.contentHorizontalAlignment = (UIControlContentHorizontalAlignment)(self.rightImgAlignment - 1);
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
    return _rightImgAlignment ? : RightImgAlignmentRight;
}

@end
