//
//  LPRightImgBtn.h
//
//  Created by litt1e-p on 16/2/18.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, RightImgAlignment)
{
    RightImgAlignmentLeft = 1,
    RightImgAlignmentRight,
    RightImgAlignmentCenter
};

@interface LPRightImgBtn : UIButton

@property (nonatomic, assign) RightImgAlignment rightImgAlignment;

@end
