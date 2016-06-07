//
//  Slider.h
//  ProgressSlider
//
//  Created by Mac on 16/6/3.
//  Copyright © 2016年 yijia. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ProgressDelegate <NSObject>
// 点击view后返回的value
- (void)touchView:(float)value;
@end
@interface Slider : UIView

@property (nonatomic, strong, readonly) UISlider *slider;

@property (nonatomic, strong) UIView *thumbView; // 滑块

@property (nonatomic, assign) id<ProgressDelegate> delegate;

@property (nonatomic, assign) CGFloat cache; // 缓冲进度条的值

@property (nonatomic, weak) UIColor *cacheColor; // 缓冲进度条的颜色

@end
