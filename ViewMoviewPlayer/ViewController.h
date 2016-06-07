//
//  ViewController.h
//  ViewMoviewPlayer
//
//  Created by Mac on 16/6/6.
//  Copyright © 2016年 yijia. All rights reserved.
//

#import <UIKit/UIKit.h>

// 枚举值，包含水平移动方向和垂直移动方向
typedef NS_ENUM(NSInteger, PanDirection){
    PanDirectionHorizontalMoved,
    PanDirectionVerticalMoved
};

@interface ViewController : UIViewController

// 初始化方法
- (void)setupVideoByPath:(NSString *)path page:(NSInteger)page;

@end
