//
//  LoginView.h
//  JSUIKitDemo
//
//  Created by 菅思博 on 16/12/20.
//  Copyright © 2016年 菅思博. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginViewDelegate <NSObject>

- (void)loginButtonClick;
- (void)forgetButtonClick;
- (void)registerButtonClick;
- (void)wechatButtonClick;
- (void)quickButtonClick;

@end

@interface LoginView : UIView

@property (nonatomic, weak) id <LoginViewDelegate> delegate;

@end
