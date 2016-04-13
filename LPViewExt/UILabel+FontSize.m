//
//  UILabel+FontSize.m
//
//  Created by litt1e-p on 16/4/12.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "UILabel+FontSize.h"

@implementation UILabel (FontSize)

- (void)adjustsFontSizeToFitRect:(CGRect)rect
{
    CGSize maxSize          = CGSizeMake(rect.size.width, rect.size.height);
    CGFloat currentFontSize = 17.f;
    NSString *str           = self.text;
    CGSize requiredSize     = [str boundingRectWithSize:maxSize options:NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[self.font fontWithSize:currentFontSize]} context:nil].size;
    if(requiredSize.height <= maxSize.height) {
        while (requiredSize.height <= maxSize.height && requiredSize.width < maxSize.width) {
            currentFontSize++;
            requiredSize = [str boundingRectWithSize:maxSize options:NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[self.font fontWithSize:currentFontSize]} context:nil].size;
        }
    } else {
        while (requiredSize.height > maxSize.height || requiredSize.width > maxSize.width) {
            currentFontSize--;
            requiredSize = [str boundingRectWithSize:maxSize options:NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[self.font fontWithSize:currentFontSize]} context:nil].size;
        }
        requiredSize=[str boundingRectWithSize:maxSize options:NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[self.font fontWithSize:currentFontSize]} context:nil].size;
    }
    self.font = [self.font fontWithSize:currentFontSize];
    self.adjustsFontSizeToFitWidth = YES;
}

@end
