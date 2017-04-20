//
//  TableViewController.m
//  ViewMoviewPlayer
//
//  Created by Mac on 16/6/6.
//  Copyright © 2016年 yijia. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"
#import "OPVideoController.h"
#import "OPMediaManger.h"
#import "OPVideoVC.h"
#import "OPVideoPlayer.h"

#define kPath [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]
@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // NSLog(@"%@", kPath);
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = @"000";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    OPVideoPlayer *op = [[OPVideoPlayer alloc] init];
    [op playvideo];
    
//    OPVideoController *vc = [OPMediaManger videoByPath:kPath page:0];
//    
//    NSLog(@"%@", vc);
//    
//    if (vc) {
//        
//        [self presentViewController:vc animated:YES completion:nil];
//        
//    }else{
//    
//        return;
//    }
    
    OPVideoVC *vc1 = [OPMediaManger viewByPath:kPath page:0];
    
    if (vc1) {
        
        [self presentViewController:vc1 animated:YES completion:nil];
        
    }else{
        
        return;
    }
    
}


@end
