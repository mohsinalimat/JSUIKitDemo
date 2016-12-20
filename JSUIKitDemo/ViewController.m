//
//  ViewController.m
//  JSUIKitDemo
//
//  Created by 菅思博 on 16/12/12.
//  Copyright © 2016年 菅思博. All rights reserved.
//

#import "ViewController.h"

#import "LoginView.h"

@interface ViewController () <LoginViewDelegate>

@end

@implementation ViewController
#pragma mark 生命周期
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    LoginView *loginView = [[LoginView alloc] init];
    loginView.delegate = self;
    
    self.view = loginView;
}

#pragma mark LoginViewDelegate
- (void)loginButtonClick
{
    NSLog(@"Login Button Was Click");
}

- (void)forgetButtonClick
{
    NSLog(@"Forget Button Was Click");
}

- (void)registerButtonClick
{
    NSLog(@"Register Button Was Click");
}

- (void)wechatButtonClick
{
    NSLog(@"WeChat Button Was Click");
}

- (void)quickButtonClick
{
    NSLog(@"Quick Button Was Click");
}

@end
