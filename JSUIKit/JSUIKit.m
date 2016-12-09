//
//  JSUIKit.m
//  JSUIKitDemo
//
//  Created by 菅思博 on 16/12/8.
//  Copyright © 2016年 菅思博. All rights reserved.
//

#import "JSUIKit.h"

@implementation JSUIKit
#pragma mark UILabel
+ (UILabel *)createLabelWithAttributedText:(NSAttributedString *)attributedText
{
    UILabel *label = [self createLabelWithBackgroundColor:[UIColor clearColor]
                                           AttributedText:attributedText
                                            TextAlignment:NSTextAlignmentLeft
                                            NumberOfLines:1
                                            LineBreakMode:NSLineBreakByWordWrapping];

    return label;
}

+ (UILabel *)createLabelWithBackgroundColor:(UIColor *)backgroundColor
                             AttributedText:(NSAttributedString *)attributedText
                              TextAlignment:(NSTextAlignment)textAlignment
                              NumberOfLines:(NSInteger)numberOfLines
                              LineBreakMode:(NSLineBreakMode)lineBreakMode
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    
    label.backgroundColor = backgroundColor;
    
    label.attributedText = attributedText;
    
    label.textAlignment = textAlignment;
    
    label.numberOfLines = numberOfLines;
    
    label.lineBreakMode = lineBreakMode;
    
    return label;
}

+ (UILabel *)createLabelWithText:(NSString *)text
                        FontSize:(CGFloat)fontSize
                       TextColor:(UIColor *)textColor
{
    UILabel *label = [self createLabelWithBackgroundColor:[UIColor clearColor]
                                                     Text:text
                                                 FontSize:fontSize
                                                TextColor:textColor
                                            TextAlignment:NSTextAlignmentLeft
                                            NumberOfLines:1
                                            LineBreakMode:NSLineBreakByWordWrapping];
    
    return label;
}

+ (UILabel *)createLabelWithBackgroundColor:(UIColor *)backgroundColor
                                       Text:(NSString *)text
                                   FontSize:(CGFloat)fontSize
                                  TextColor:(UIColor *)textColor
                              TextAlignment:(NSTextAlignment)textAlignment
                              NumberOfLines:(NSInteger)numberOfLines
                              LineBreakMode:(NSLineBreakMode)lineBreakMode
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    
    label.backgroundColor = backgroundColor;
    
    label.text = text;
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = textColor;
    
    label.textAlignment = textAlignment;
    
    label.numberOfLines = numberOfLines;
    
    label.lineBreakMode = lineBreakMode;
    
    return label;
}

#pragma mark UIImageView
+ (UIImageView *)createImageViewWithImageName:(NSString *)imageName
                                  ContentMode:(UIViewContentMode)contentMode
{
    UIImageView *imageView = [self createImageViewWithBackgroundColor:[UIColor clearColor]
                                                            ImageName:imageName
                                                          ContentMode:contentMode
                                               UserInteractionEnabled:NO];
    
    return imageView;
}

+ (UIImageView *)createImageViewWithBackgroundColor:(UIColor *)backgroundColor
                                          ImageName:(NSString *)imageName
                                        ContentMode:(UIViewContentMode)contentMode
                             UserInteractionEnabled:(BOOL)isUserInteractionEnabled
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    
    imageView.backgroundColor = backgroundColor;
    
    imageView.image = [UIImage imageNamed:imageName];
    
    imageView.contentMode = contentMode;
    
    imageView.userInteractionEnabled = isUserInteractionEnabled;

    return imageView;
}

#pragma mark UIButton
+ (UIButton *)createButtonWithBackgroundColor:(UIColor *)backgroundColor
                    BackgroundNormalImageName:(NSString *)backgroundNormalImageName
                  BackgroundSelectedImageName:(NSString *)backgroundSelectedImageName
                         NormalAlignmentTitle:(NSAttributedString *)normalAttributedTitle
                       SelectedAlignmentTitle:(NSAttributedString *)selectedAttributedTitle
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.backgroundColor = backgroundColor;
    
    [button setBackgroundImage:[UIImage imageNamed:backgroundNormalImageName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:backgroundSelectedImageName] forState:UIControlStateSelected];
    
    [button setAttributedTitle:normalAttributedTitle forState:UIControlStateNormal];
    [button setAttributedTitle:selectedAttributedTitle forState:UIControlStateSelected];
    
    return button;
}

+ (UIButton *)createButtonWithBackgroundColor:(UIColor *)backgroundColor
                    BackgroundNormalImageName:(NSString *)backgroundNormalImageName
                  BackgroundSelectedImageName:(NSString *)backgroundSelectedImageName
                                  NormalTitle:(NSString *)normalTitle
                                SelectedTitle:(NSString *)selectedTitle
                             NormalTitleColor:(UIColor *)normalTitleColor
                           SelectedTitleColor:(UIColor *)selectedTitleColor
                                TitleFontSize:(CGFloat)titleFontSize
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.backgroundColor = backgroundColor;
    
    [button setBackgroundImage:[UIImage imageNamed:backgroundNormalImageName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:backgroundSelectedImageName] forState:UIControlStateSelected];
    
    [button setTitle:normalTitle forState:UIControlStateNormal];
    [button setTitle:selectedTitle forState:UIControlStateSelected];
    
    [button setTitleColor:normalTitleColor forState:UIControlStateNormal];
    [button setTitleColor:selectedTitleColor forState:UIControlStateSelected];
    
    button.titleLabel.font = [UIFont systemFontOfSize:titleFontSize];
    
    return button;
}

+ (UIButton *)createButtonWithBackgroundColor:(UIColor *)backgroundColor
                              NormalImageName:(NSString *)normalImageName
                            SelectedImageName:(NSString *)selectedImageName
                         NormalAlignmentTitle:(NSAttributedString *)normalAttributedTitle
                       SelectedAlignmentTitle:(NSAttributedString *)selectedAttributedTitle
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.backgroundColor = backgroundColor;
    
    [button setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
    
    [button setAttributedTitle:normalAttributedTitle forState:UIControlStateNormal];
    [button setAttributedTitle:selectedAttributedTitle forState:UIControlStateSelected];
    
    return button;
}

+ (UIButton *)createButtonWithBackgroundColor:(UIColor *)backgroundColor
                              NormalImageName:(NSString *)normalImageName
                            SelectedImageName:(NSString *)selectedImageName
                                  NormalTitle:(NSString *)normalTitle
                                SelectedTitle:(NSString *)selectedTitle
                             NormalTitleColor:(UIColor *)normalTitleColor
                           SelectedTitleColor:(UIColor *)selectedTitleColor
                                TitleFontSize:(CGFloat)titleFontSize
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.backgroundColor = backgroundColor;
    
    [button setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
    
    [button setTitle:normalTitle forState:UIControlStateNormal];
    [button setTitle:selectedTitle forState:UIControlStateSelected];
    
    [button setTitleColor:normalTitleColor forState:UIControlStateNormal];
    [button setTitleColor:selectedTitleColor forState:UIControlStateSelected];
    
    button.titleLabel.font = [UIFont systemFontOfSize:titleFontSize];
    
    return button;
}

#pragma mark UITextField
+ (UITextField *)createTextFieldWithBackgroundColor:(UIColor *)backgroundColor
                                        BorderStyle:(UITextBorderStyle)borderStyle
                                BackgroundImageName:(NSString *)backgroundImageName
                                           FontSize:(CGFloat)fontSize
                                          TextColor:(UIColor *)textColor
                                      TextAlignment:(NSTextAlignment)textAlignment
                              AttributedPlaceholder:(NSAttributedString *)attributedPlaceholder
                                    SecureTextEntry:(BOOL)isSecureTextEntry
                               ClearsOnBeginEditing:(BOOL)isClearsOnBeginEditing
                                       KeyboardType:(UIKeyboardType)keyboardType
                                      ReturnKeyType:(UIReturnKeyType)returnKeyType
                                 AutocorrectionType:(UITextAutocorrectionType)autocorrectionType
                             AutocapitalizationType:(UITextAutocapitalizationType)autocapitalizationType
                                       LeftViewMode:(UITextFieldViewMode)leftViewMode
                                      RightViewMode:(UITextFieldViewMode)rightViewMode
                                    ClearButtonMode:(UITextFieldViewMode)clearButtonMode
                                           LeftView:(UIView *)leftView
                                          RightView:(UIView *)rightView

{
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectZero];
    
    textField.backgroundColor = backgroundColor;
    
    textField.borderStyle = borderStyle;

    textField.background = [UIImage imageNamed:backgroundImageName];
    
    textField.font = [UIFont systemFontOfSize:fontSize];
    textField.textColor = textColor;
    textField.textAlignment = textAlignment;
    
    textField.attributedPlaceholder = attributedPlaceholder;
    
    textField.secureTextEntry = isSecureTextEntry;
    textField.clearsOnBeginEditing = isClearsOnBeginEditing;
    
    textField.keyboardType = keyboardType;
    textField.returnKeyType = returnKeyType;
    textField.autocorrectionType = autocorrectionType;
    textField.autocapitalizationType = autocapitalizationType;
    
    textField.leftViewMode = leftViewMode;
    textField.rightViewMode = rightViewMode;
    textField.clearButtonMode = clearButtonMode;

    textField.leftView = leftView;
    textField.rightView = rightView;
    
    return textField;
}

@end
