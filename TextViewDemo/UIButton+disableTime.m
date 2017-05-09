//
//  UIButton+disableTime.m
//  TextViewDemo
//
//  Created by xulianpeng on 16/8/9.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "UIButton+disableTime.h"
#import <objc/runtime.h>

static const void *s_XLPButtonDisbletimeKey = "s_XLPButtonDisbletimeKey";

@implementation UIButton (disableTime)

- (void)setDisableTime:(NSString *)disableTime
{
    objc_setAssociatedObject(self, s_XLPButtonDisbletimeKey, disableTime, OBJC_ASSOCIATION_ASSIGN);
    [self performSelector:@selector(disableButton) withObject:self afterDelay:[disableTime floatValue]];
    
}
- (void)disableButton
{
//    self.ev
}
- (NSString *)disableTime
{
    
    return objc_getAssociatedObject(self, s_XLPButtonDisbletimeKey);
}
@end
