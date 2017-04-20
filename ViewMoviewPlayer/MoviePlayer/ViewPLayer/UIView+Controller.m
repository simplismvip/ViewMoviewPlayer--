//
//  UIView+Controller.m
//  ViewMoviewPlayer
//
//  Created by Mac on 16/6/8.
//  Copyright © 2016年 yijia. All rights reserved.
//

#import "UIView+Controller.h"

@implementation UIView (Controller)

- (UIViewController *)viewController {
    
    for (UIView *next = [self superview]; next; next = next.superview) {
        
        UIResponder *nextResponder = [next nextResponder];
        
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            
            return (UIViewController*)nextResponder;
        }
    }
    
    return nil;
}


@end
