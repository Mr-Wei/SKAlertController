//
//  ALPAlertController.h
//  SKAlertControllerDemo
//
//  Created by Apple on 16/12/6.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#ifndef SCREEN_WIDTH
#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#endif
#ifndef SCREEN_HEIGHT
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#endif
NS_ASSUME_NONNULL_BEGIN
@interface SKAlertController : UIViewController
@property (nonatomic,strong)UIView *contentView;
+(instancetype)alertControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message;
- (void)addAction:(UIAlertAction *)action;
@property (nonatomic, readonly) NSArray<UIAlertAction *> *actions;
@end

@interface SKAlertAction : UIAlertAction
@property (nonatomic, copy, nullable) void(^handler)(SKAlertAction *alertAction);
@end
NS_ASSUME_NONNULL_END
