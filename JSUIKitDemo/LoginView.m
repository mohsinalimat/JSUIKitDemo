//
//  LoginView.m
//  JSUIKitDemo
//
//  Created by 菅思博 on 16/12/20.
//  Copyright © 2016年 菅思博. All rights reserved.
//

#import "LoginView.h"

#import "JSUIKit.h"
#import "UIColor+JSCategory.h"
#import "UIButton+JSCategory.h"

#import <Masonry/Masonry.h>

/**
 *  判断设备型号
 *
 *  @param IS_IPHONE4 IS_IPHONE5 IS_IPHONE6 IS_IPHONE6P
 *
 *  @return YES\NO
 */
#define IS_IPHONE4  (JSSCREEN_W == 320 && JSSCREEN_H == 480)
#define IS_IPHONE5  (JSSCREEN_W == 320 && JSSCREEN_H == 568)
#define IS_IPHONE6  (JSSCREEN_W == 375 && JSSCREEN_H == 667)
#define IS_IPHONE6P (JSSCREEN_W == 414 && JSSCREEN_H == 736)

/**
 *  屏幕尺寸
 *
 *  @param ECSCREEN ECSCREEN_W ECSCREEN_H
 *
 *  @return 屏幕宽高 屏幕宽 屏幕高
 */
#define JSSCREEN          [[UIScreen mainScreen] bounds]
#define JSSCREEN_W        [[UIScreen mainScreen]bounds].size.width
#define JSSCREEN_H        [[UIScreen mainScreen]bounds].size.height

#define SCALE_W(rate) (JSSCREEN_W / 375) * rate
#define SCALE_H(rate) (JSSCREEN_H / 667) * rate

@interface LoginView () <UITextFieldDelegate>

@property (nonatomic, weak) UIImageView *backgroundImageView;
@property (nonatomic, weak) UIImageView *signImageView;
@property (nonatomic, weak) UIImageView *orImageView;

@property (nonatomic, weak) UITextField *usernameTextField;
@property (nonatomic, weak) UITextField *userpasswordTextField;

@property (nonatomic, weak) UIButton *loginButton;
@property (nonatomic, weak) UIButton *registerButton;
@property (nonatomic, weak) UIButton *forgetButton;
@property (nonatomic, weak) UIButton *wechatButton;
@property (nonatomic, weak) UIButton *quickButton;

@end

@implementation LoginView
#pragma mark Initiation
- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        self.backgroundColor = [UIColor whiteColor];
        
        [self createLoginView];
    }
    
    return self;
}

#pragma mark Create LoginView
- (void)createLoginView
{
    [self.backgroundImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.mas_equalTo(self.mas_width);
        make.height.mas_equalTo(self.mas_height);
    }];
    
    [self.signImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.backgroundImageView);
        make.top.equalTo(self.backgroundImageView).offset(45 * SCALE_H(0.85));
    }];
    
    [self.usernameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.backgroundImageView);
        make.top.equalTo(self.signImageView.mas_bottom).offset(75 * SCALE_H(0.85));
        make.size.mas_equalTo(CGSizeMake(300 * SCALE_W(1.0), 45));
    }];
    
    [self.userpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.backgroundImageView);
        make.top.equalTo(self.usernameTextField.mas_bottom).offset(25 * SCALE_H(0.85));
        make.size.mas_equalTo(self.usernameTextField);
    }];
    
    [self.loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.backgroundImageView);
        make.top.equalTo(self.userpasswordTextField.mas_bottom).offset(52 * SCALE_H(0.85));
        make.size.mas_equalTo(CGSizeMake(300 * SCALE_W(1.0), 44));
    }];
    
    [self.forgetButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.loginButton.mas_bottom).offset(6);
        make.left.equalTo(self.loginButton.mas_left);
    }];
    
    [self.registerButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.loginButton.mas_bottom).offset(6);
        make.right.equalTo(self.loginButton.mas_right);
    }];
    
    [self.orImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.backgroundImageView);
        make.top.equalTo(self.forgetButton.mas_bottom).offset(77 * SCALE_H(0.85));
    }];
    
    [self.wechatButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.backgroundImageView).offset(-50);
        make.top.equalTo(self.orImageView.mas_bottom).offset(34 * SCALE_H(0.85));
    }];
    
    [self.quickButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.backgroundImageView).offset(50);
        make.top.equalTo(self.orImageView.mas_bottom).offset(34 * SCALE_H(0.85));
    }];
}

#pragma mark Getting
- (UIImageView *)backgroundImageView
{
    if (!_backgroundImageView)
    {
        UIImageView *backgroundImageView = [JSUIKit createImageViewWithBackgroundColor:[UIColor whiteColor]
                                                                             ImageName:@"bg_dengluzhuche"
                                                                           ContentMode:UIViewContentModeScaleAspectFill
                                                                UserInteractionEnabled:YES];
        
        _backgroundImageView = backgroundImageView;
        
        [self addSubview:_backgroundImageView];
    }
    
    return _backgroundImageView;
}

- (UIImageView *)signImageView
{
    if (!_signImageView)
    {
        UIImageView *signImageView = [JSUIKit createImageViewWithBackgroundColor:[UIColor clearColor]
                                                                       ImageName:@"image_muyunbao"
                                                                     ContentMode:UIViewContentModeScaleAspectFill
                                                          UserInteractionEnabled:NO];
        
        _signImageView = signImageView;
        
        [_backgroundImageView addSubview:_signImageView];
    }
    
    return _signImageView;
}

- (UITextField *)usernameTextField
{
    if (!_usernameTextField)
    {
        NSDictionary *attributedDictionary = @{
                                               NSFontAttributeName:[UIFont systemFontOfSize:16.0f],
                                               NSForegroundColorAttributeName:[UIColor whiteColor]
                                               };
        
        NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:@"请输入用户名"
                                                                               attributes:attributedDictionary];
        
        UIImageView *leftImageView = [JSUIKit createImageViewWithBackgroundColor:[UIColor clearColor]
                                                                       ImageName:@"ic_yonghuming"
                                                                     ContentMode:UIViewContentModeCenter
                                                          UserInteractionEnabled:NO];
        
        [leftImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(40, 40));
        }];
        
        UITextField *usernameTextField = [JSUIKit createTextFieldWithBackgroundColor:[UIColor clearColor]
                                                                         BorderStyle:UITextBorderStyleNone
                                                                 BackgroundImageName:@"bg_shurukuang"
                                                                            FontSize:16.0f
                                                                           TextColor:[UIColor blackColor]
                                                                       TextAlignment:NSTextAlignmentLeft
                                                               AttributedPlaceholder:attributedString
                                                                     SecureTextEntry:NO
                                                                ClearsOnBeginEditing:NO
                                                                        KeyboardType:UIKeyboardTypeDefault
                                                                       ReturnKeyType:UIReturnKeyNext
                                                                  AutocorrectionType:UITextAutocorrectionTypeNo
                                                              AutocapitalizationType:UITextAutocapitalizationTypeNone
                                                                        LeftViewMode:UITextFieldViewModeAlways
                                                                       RightViewMode:UITextFieldViewModeNever
                                                                     ClearButtonMode:UITextFieldViewModeWhileEditing
                                                                            LeftView:leftImageView
                                                                           RightView:nil];
        
        _usernameTextField = usernameTextField;
        
        _usernameTextField.delegate = self;
        
        [_backgroundImageView addSubview:_usernameTextField];
    }
    
    return _usernameTextField;
}

- (UITextField *)userpasswordTextField
{
    if (!_userpasswordTextField)
    {
        NSDictionary *attributedDictionary = @{
                                               NSFontAttributeName:[UIFont systemFontOfSize:16.0f],
                                               NSForegroundColorAttributeName:[UIColor whiteColor]
                                               };
        
        NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:@"请输入密码"
                                                                               attributes:attributedDictionary];
        
        UIImageView *leftImageView = [JSUIKit createImageViewWithBackgroundColor:[UIColor clearColor]
                                                                       ImageName:@"ic_mima"
                                                                     ContentMode:UIViewContentModeCenter
                                                          UserInteractionEnabled:NO];
        
        [leftImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(40, 40));
        }];
        
        UITextField *userpasswordTextField = [JSUIKit createTextFieldWithBackgroundColor:[UIColor clearColor]
                                                                             BorderStyle:UITextBorderStyleNone
                                                                     BackgroundImageName:@"bg_shurukuang"
                                                                                FontSize:16.0f
                                                                               TextColor:[UIColor blackColor]
                                                                           TextAlignment:NSTextAlignmentLeft
                                                                   AttributedPlaceholder:attributedString
                                                                         SecureTextEntry:YES
                                                                    ClearsOnBeginEditing:YES
                                                                            KeyboardType:UIKeyboardTypeDefault
                                                                           ReturnKeyType:UIReturnKeyDone
                                                                      AutocorrectionType:UITextAutocorrectionTypeNo
                                                                  AutocapitalizationType:UITextAutocapitalizationTypeNone
                                                                            LeftViewMode:UITextFieldViewModeAlways
                                                                           RightViewMode:UITextFieldViewModeNever
                                                                         ClearButtonMode:UITextFieldViewModeWhileEditing
                                                                                LeftView:leftImageView
                                                                               RightView:nil];
        
        _userpasswordTextField = userpasswordTextField;
        
        _userpasswordTextField.delegate = self;
        
        [_backgroundImageView addSubview:_userpasswordTextField];
    }
    
    return _userpasswordTextField;
}

- (UIButton *)loginButton
{
    if (!_loginButton)
    {
        NSDictionary *attributedDictionary = @{
                                               NSFontAttributeName:[UIFont systemFontOfSize:18.0f],
                                               NSForegroundColorAttributeName:[UIColor whiteColor]
                                               };
        
        NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:@"立即登录"
                                                                               attributes:attributedDictionary];
        
        UIButton *loginButton = [JSUIKit createButtonWithBackgroundColor:[UIColor clearColor]
                                               BackgroundNormalImageName:@"btn_tongyonganniu"
                                             BackgroundSelectedImageName:@"btn_tongyonganniu"
                                                   NormalAttributedTitle:attributedString
                                                 SelectedAttributedTitle:attributedString];
        
        _loginButton = loginButton;
        
        [_loginButton addTarget:self
                         action:@selector(loginClick:)
               forControlEvents:UIControlEventTouchUpInside];
        
        [_backgroundImageView addSubview:_loginButton];
    }
    
    return _loginButton;
}

- (UIButton *)forgetButton
{
    if (!_forgetButton)
    {
        NSDictionary *attributedDictionary = @{
                                               NSFontAttributeName:[UIFont systemFontOfSize:14.0f],
                                               NSForegroundColorAttributeName:[UIColor whiteColor]
                                               };
        
        NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:@"忘记密码？"
                                                                               attributes:attributedDictionary];
        
        UIButton *forgetButton = [JSUIKit createButtonWithBackgroundColor:[UIColor clearColor]
                                                BackgroundNormalImageName:nil
                                              BackgroundSelectedImageName:nil
                                                    NormalAttributedTitle:attributedString
                                                  SelectedAttributedTitle:attributedString];
        
        _forgetButton = forgetButton;
        
        [_forgetButton addTarget:self
                          action:@selector(forgetClick:)
                forControlEvents:UIControlEventTouchUpInside];
        
        [_backgroundImageView addSubview:_forgetButton];
    }
    
    return _forgetButton;
}

- (UIButton *)registerButton
{
    if (!_registerButton)
    {
        NSDictionary *attributedDictionary = @{
                                               NSFontAttributeName:[UIFont systemFontOfSize:14.0f],
                                               NSForegroundColorAttributeName:[UIColor whiteColor]
                                               };
        
        NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:@"立即注册"
                                                                               attributes:attributedDictionary];
        
        UIButton *registerButton = [JSUIKit createButtonWithBackgroundColor:[UIColor clearColor]
                                                  BackgroundNormalImageName:nil
                                                BackgroundSelectedImageName:nil
                                                      NormalAttributedTitle:attributedString
                                                    SelectedAttributedTitle:attributedString];
        
        _registerButton = registerButton;
        
        [_registerButton addTarget:self
                            action:@selector(registerClick:)
                  forControlEvents:UIControlEventTouchUpInside];
        
        [_backgroundImageView addSubview:_registerButton];
    }
    
    return _registerButton;
}

- (UIImageView *)orImageView
{
    if (!_orImageView)
    {
        UIImageView *orImageView = [JSUIKit createImageViewWithBackgroundColor:[UIColor clearColor]
                                                                     ImageName:@"ic_or"
                                                                   ContentMode:UIViewContentModeScaleAspectFill
                                                        UserInteractionEnabled:NO];
        
        _orImageView = orImageView;
        
        [_backgroundImageView addSubview:_orImageView];
    }
    
    return _orImageView;
}

- (UIButton *)wechatButton
{
    if (!_wechatButton)
    {
        NSDictionary *attributedDictionary = @{
                                               NSFontAttributeName:[UIFont systemFontOfSize:14.0f],
                                               NSForegroundColorAttributeName:[UIColor js_colorWithHexString:@"#FF6A7F"
                                                                                                       alpha:1.0f],
                                               };
        
        NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:@"微信"
                                                                               attributes:attributedDictionary];
        
        UIButton *wechatButton = [JSUIKit createButtonWithBackgroundColor:[UIColor clearColor]
                                                          NormalImageName:@"ic_weixin"
                                                        SelectedImageName:@"ic_weixin"
                                                    NormalAttributedTitle:attributedString
                                                  SelectedAttributedTitle:attributedString];
        
        _wechatButton = wechatButton;
        
        [_wechatButton addTarget:self
                          action:@selector(wechatClick:)
                forControlEvents:UIControlEventTouchUpInside];
        
        [_backgroundImageView addSubview:_wechatButton];
        
        [_wechatButton js_setButtonImageTitleStyle:JSButtonImageTitleStyleTop
                                           spacing:8.0f];
    }
    
    return _wechatButton;
}

- (UIButton *)quickButton
{
    if (!_quickButton)
    {
        NSDictionary *attributedDictionary = @{
                                               NSFontAttributeName:[UIFont systemFontOfSize:14.0f],
                                               NSForegroundColorAttributeName:[UIColor js_colorWithHexString:@"#FF6A7F"
                                                                                                       alpha:1.0f],
                                               };
        
        NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:@"快捷登录"
                                                                               attributes:attributedDictionary];
        
        UIButton *quickButton = [JSUIKit createButtonWithBackgroundColor:[UIColor clearColor]
                                                         NormalImageName:@"ic_kuaishudenglu"
                                                       SelectedImageName:@"ic_kuaishudenglu"
                                                   NormalAttributedTitle:attributedString
                                                 SelectedAttributedTitle:attributedString];
        
        _quickButton = quickButton;
        
        [_quickButton addTarget:self
                         action:@selector(quickClick:)
               forControlEvents:UIControlEventTouchUpInside];
        
        [_backgroundImageView addSubview:_quickButton];
        
        [_quickButton js_setButtonImageTitleStyle:JSButtonImageTitleStyleTop
                                          spacing:8.0f];
    }
    
    return _quickButton;
}

#pragma mark Action
- (void)loginClick:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(loginButtonClick)])
    {
        [self.delegate loginButtonClick];
    }
}

- (void)forgetClick:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(forgetButtonClick)])
    {
        [self.delegate forgetButtonClick];
    }
}

- (void)registerClick:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(registerButtonClick)])
    {
        [self.delegate registerButtonClick];
    }
}

- (void)wechatClick:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(wechatButtonClick)])
    {
        [self.delegate wechatButtonClick];
    }
}

- (void)quickClick:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(quickButtonClick)])
    {
        [self.delegate quickButtonClick];
    }
}


#pragma mark UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (_usernameTextField.isFirstResponder)
    {
        [_usernameTextField resignFirstResponder];
        [_userpasswordTextField becomeFirstResponder];
    }
    else if (_userpasswordTextField.isFirstResponder)
    {
        [_usernameTextField resignFirstResponder];
        [_userpasswordTextField resignFirstResponder];
        
        [self loginClick:nil];
    }
    
    return YES;
}

@end
