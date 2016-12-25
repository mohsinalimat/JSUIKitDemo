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
+ (UILabel *)createLabelWithBackgroundColor:(UIColor *)backgroundColor
                             attributedText:(NSAttributedString *)attributedText
                              textAlignment:(NSTextAlignment)textAlignment
                              numberOfLines:(NSInteger)numberOfLines
                              lineBreakMode:(NSLineBreakMode)lineBreakMode {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    
    label.backgroundColor = backgroundColor;
    
    label.attributedText = attributedText;
    
    label.textAlignment = textAlignment;
    
    label.numberOfLines = numberOfLines;
    
    label.lineBreakMode = lineBreakMode;
    
    return label;
}

+ (UILabel *)createLabelWithBackgroundColor:(UIColor *)backgroundColor
                                       text:(NSString *)text
                                   fontSize:(CGFloat)fontSize
                                  textColor:(UIColor *)textColor
                              textAlignment:(NSTextAlignment)textAlignment
                              numberOfLines:(NSInteger)numberOfLines
                              lineBreakMode:(NSLineBreakMode)lineBreakMode {
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
+ (UIImageView *)createImageViewWithBackgroundColor:(UIColor *)backgroundColor
                                          imageName:(NSString *)imageName
                                        contentMode:(UIViewContentMode)contentMode
                             userInteractionEnabled:(BOOL)isUserInteractionEnabled {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    
    imageView.backgroundColor = backgroundColor;
    
    imageView.image = [UIImage imageNamed:imageName];
    
    imageView.contentMode = contentMode;
    
    imageView.userInteractionEnabled = isUserInteractionEnabled;

    return imageView;
}

#pragma mark UIButton
+ (UIButton *)createButtonWithBackgroundColor:(UIColor *)backgroundColor
                    backgroundNormalImageName:(NSString *)backgroundNormalImageName
                  backgroundSelectedImageName:(NSString *)backgroundSelectedImageName
                        normalAttributedTitle:(NSAttributedString *)normalAttributedTitle
                      selectedAttributedTitle:(NSAttributedString *)selectedAttributedTitle {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.backgroundColor = backgroundColor;
    
    [button setBackgroundImage:[UIImage imageNamed:backgroundNormalImageName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:backgroundSelectedImageName] forState:UIControlStateSelected];
    
    [button setAttributedTitle:normalAttributedTitle forState:UIControlStateNormal];
    [button setAttributedTitle:selectedAttributedTitle forState:UIControlStateSelected];

    return button;
}

+ (UIButton *)createButtonWithBackgroundColor:(UIColor *)backgroundColor
                    backgroundNormalImageName:(NSString *)backgroundNormalImageName
                  backgroundSelectedImageName:(NSString *)backgroundSelectedImageName
                                  normalTitle:(NSString *)normalTitle
                                selectedTitle:(NSString *)selectedTitle
                             normalTitleColor:(UIColor *)normalTitleColor
                           selectedTitleColor:(UIColor *)selectedTitleColor
                                titleFontSize:(CGFloat)titleFontSize {
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
                              normalImageName:(NSString *)normalImageName
                            selectedImageName:(NSString *)selectedImageName
                        normalAttributedTitle:(NSAttributedString *)normalAttributedTitle
                      selectedAttributedTitle:(NSAttributedString *)selectedAttributedTitle {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.backgroundColor = backgroundColor;
    
    [button setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
    
    [button setAttributedTitle:normalAttributedTitle forState:UIControlStateNormal];
    [button setAttributedTitle:selectedAttributedTitle forState:UIControlStateSelected];
    
    return button;
}

+ (UIButton *)createButtonWithBackgroundColor:(UIColor *)backgroundColor
                              normalImageName:(NSString *)normalImageName
                            selectedImageName:(NSString *)selectedImageName
                                  normalTitle:(NSString *)normalTitle
                                selectedTitle:(NSString *)selectedTitle
                             normalTitleColor:(UIColor *)normalTitleColor
                           selectedTitleColor:(UIColor *)selectedTitleColor
                                titleFontSize:(CGFloat)titleFontSize {
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
                                        borderStyle:(UITextBorderStyle)borderStyle
                                backgroundImageName:(NSString *)backgroundImageName
                                           fontSize:(CGFloat)fontSize
                                          textColor:(UIColor *)textColor
                                      textAlignment:(NSTextAlignment)textAlignment
                              attributedPlaceholder:(NSAttributedString *)attributedPlaceholder
                                    secureTextEntry:(BOOL)isSecureTextEntry
                               clearsOnBeginEditing:(BOOL)isClearsOnBeginEditing
                                       keyboardType:(UIKeyboardType)keyboardType
                                      returnKeyType:(UIReturnKeyType)returnKeyType
                                 autocorrectionType:(UITextAutocorrectionType)autocorrectionType
                             autocapitalizationType:(UITextAutocapitalizationType)autocapitalizationType
                                       leftViewMode:(UITextFieldViewMode)leftViewMode
                                      rightViewMode:(UITextFieldViewMode)rightViewMode
                                    clearButtonMode:(UITextFieldViewMode)clearButtonMode
                                           leftView:(UIView *)leftView
                                          rightView:(UIView *)rightView {
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

#pragma mark UITextView
+ (UITextView *)createTextViewWithBackgroundColor:(UIColor *)backgroundColor
                                         fontSize:(CGFloat)fontSize
                                        textColor:(UIColor *)textColor
                                    textAlignment:(NSTextAlignment)textAlignment
                            attributedPlaceholder:(NSAttributedString *)attributedPlaceholder
                                    scrollEnabled:(BOOL)isScrollEnabled
                                     keyboardType:(UIKeyboardType)keyboardType
                                    returnKeyType:(UIReturnKeyType)returnKeyType
                                dataDetectorTypes:(UIDataDetectorTypes)dataDetectorTypes {
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectZero];
    
    textView.backgroundColor = backgroundColor;
    
    textView.font = [UIFont systemFontOfSize:fontSize];
    textView.textColor = textColor;
    textView.textAlignment = textAlignment;
    
    UILabel *placeholderLabel = [self createLabelWithBackgroundColor:backgroundColor
                                                      attributedText:attributedPlaceholder
                                                       textAlignment:NSTextAlignmentLeft
                                                       numberOfLines:1
                                                       lineBreakMode:NSLineBreakByWordWrapping];
    
    [textView addSubview:placeholderLabel];
    
    [textView setValue:placeholderLabel forKey:@"_placeholderLabel"];
    
    textView.scrollEnabled = isScrollEnabled;
    
    textView.keyboardType = keyboardType;
    textView.returnKeyType = returnKeyType;
    
    textView.dataDetectorTypes = dataDetectorTypes;
    
    return textView;
}

@end
