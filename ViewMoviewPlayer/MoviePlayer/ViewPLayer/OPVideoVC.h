//
//  OPVideoVC.h
//  ViewMoviewPlayer
//
//  Created by Mac on 16/6/8.
//  Copyright © 2016年 yijia. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OPVideoVC;
typedef void(^dismissBlock)(OPVideoVC *vc);

@interface OPVideoVC : UIViewController

- (void)setupVCByArray:(NSMutableArray *)array page:(NSInteger)page;
- (void)dismissVc:(dismissBlock)dismiss;
@end
