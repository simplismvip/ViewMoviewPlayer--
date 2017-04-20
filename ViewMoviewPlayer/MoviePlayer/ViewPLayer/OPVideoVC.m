//
//  OPVideoVC.m
//  ViewMoviewPlayer
//
//  Created by Mac on 16/6/8.
//  Copyright © 2016年 yijia. All rights reserved.
//

#import "OPVideoVC.h"
#import "OPVideoPlayer.h"
#import "OPMediaManger.h"
@interface OPVideoVC () //<OPVideoPlayerDelegate> // 代理方法注释, 使用block回调

@end

@implementation OPVideoVC

- (void)viewDidLoad {
    [super viewDidLoad];

    // NSLog(@"self = %@", self);

}


- (void)setupVCByArray:(NSMutableArray *)array page:(NSInteger)page
{
    OPVideoPlayer *view = [[OPVideoPlayer alloc] initWithFrame:self.view.bounds];
    
    // 代理方法注释, 使用block回调
    // view.delegate = self;
    
    [view setupVideoByArray:array page:page];
    [self.view addSubview:view];
}

#pragma mark -- 使用block 回调
- (void)dismissVc:(dismissBlock)dismiss
{
    if (dismiss) {
        dismiss(self);
    }
}

#pragma mark -- 使用代理回调
// 代理方法注释, 使用block回调
//- (void)dismissVc
//{
//    [self dismissViewControllerAnimated:YES completion:nil];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
