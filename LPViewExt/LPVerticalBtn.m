//
//  LPVerticalBtn.m
//
//  Created by litt1e-p on 15/12/7.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "LPVerticalBtn.h"

@implementation LPVerticalBtn

static CGFloat const TitleMargin = 10.f;

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // Center image
    CGPoint center        = self.imageView.center;
    center.x              = self.frame.size.width/2;
    center.y              = self.imageView.frame.size.height/2;
    self.imageView.center = center;
    
    //Center text
    CGRect newFrame     = [self titleLabel].frame;
    newFrame.origin.x   = 0;
    newFrame.origin.y   = self.imageView.frame.size.height + 5;
    newFrame.size.width = self.frame.size.width;
    
    self.titleLabel.frame         = newFrame;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
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
