//
//  ViewController.m
//  JSUIKitDemo
//
//  Created by 菅思博 on 16/12/8.
//  Copyright © 2016年 菅思博. All rights reserved.
//

#import "ViewController.h"

#import <Masonry/Masonry.h>

#import "JSUIKit.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController
{
    UITextField *textField;
}
#pragma mark 生命周期
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    leftView.backgroundColor = [UIColor whiteColor];
    
    NSMutableAttributedString *attr = [[NSMutableAttributedString alloc] initWithString:@"占位符"];
    [attr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:18.0f] range:NSMakeRange(0, 3)];
    [attr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 2)];
    [attr addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(2, 1)];
    
    textField = [JSUIKit createTextFieldWithBackgroundColor:[UIColor yellowColor]
                                                BorderStyle:UITextBorderStyleNone
                                        BackgroundImageName:@""
                                                   FontSize:12.0f
                                                  TextColor:[UIColor blackColor]
                                              TextAlignment:NSTextAlignmentLeft
                                      AttributedPlaceholder:attr
                                            SecureTextEntry:NO
                                       ClearsOnBeginEditing:NO
                                               KeyboardType:UIKeyboardTypeTwitter
                                              ReturnKeyType:UIReturnKeyDone
                                         AutocorrectionType:UITextAutocorrectionTypeNo
                                     AutocapitalizationType:UITextAutocapitalizationTypeNone
                                               LeftViewMode:UITextFieldViewModeAlways
                                              RightViewMode:UITextFieldViewModeAlways
                                            ClearButtonMode:UITextFieldViewModeAlways
                                                   LeftView:leftView
                                                  RightView:nil];
    
    textField.delegate = self;
    
    [self.view addSubview:textField];
    
    [textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(self.view).offset(50);
        make.size.mas_equalTo(CGSizeMake(200, 50));
    }];
    
    UIButton *button = [JSUIKit createButtonWithBackgroundColor:[UIColor yellowColor]
                                                NormalImageName:nil
                                              SelectedImageName:nil
                                                    NormalTitle:nil
                                                  SelectedTitle:nil
                                               NormalTitleColor:nil
                                             SelectedTitleColor:nil
                                                  TitleFontSize:10.f];
    
    [button addTarget:self
               action:@selector(buttonClick:)
     forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(self.view).offset(200);
        make.size.mas_equalTo(CGSizeMake(100, 50));
    }];
}

- (void)buttonClick:(UIButton *)sender
{
    [textField resignFirstResponder];
}

@end
