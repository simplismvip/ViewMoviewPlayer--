//
//  OPVideoController.h
//  ViewMoviewPlayer
//
//  Created by Mac on 16/6/6.
//  Copyright © 2016年 yijia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OPVideoController : UIViewController

// 初始化方法
// - (void)setupVideoByPath:(NSString *)path page:(NSInteger)page;
- (void)setupVideoByArray:(NSMutableArray *)array page:(NSInteger)page;
@end
