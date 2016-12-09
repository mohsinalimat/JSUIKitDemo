//
//  JSUIKit.h
//  JSUIKitDemo
//
//  Created by 菅思博 on 16/12/8.
//  Copyright © 2016年 菅思博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSUIKit : NSObject
#pragma mark UILabel
/**
 创建一个UILabel：富文本；默认背景透明颜色

 @param attributedText 富文本
 */
+ (UILabel *)createLabelWithAttributedText:(NSAttributedString *)attributedText;

/**
 创建一个UILabel：背景颜色、富文本、文字对齐方式、显示行数

 @param backgroundColor 背景颜色
 @param attributedText  富文本
 @param textAlignment   文字对齐方式
 @param numberOfLines   显示行数
 @param lineBreakMode   字符截断类型
 */
+ (UILabel *)createLabelWithBackgroundColor:(UIColor *)backgroundColor
                             AttributedText:(NSAttributedString *)attributedText
                              TextAlignment:(NSTextAlignment)textAlignment
                              NumberOfLines:(NSInteger)numberOfLines
                              LineBreakMode:(NSLineBreakMode)lineBreakMode;

/**
 创建一个UILabel：文字、文字颜色、文字字体大小；默认背景透明颜色

 @param text      文字
 @param fontSize  文字字体大小
 @param textColor 文字颜色
 */
+ (UILabel *)createLabelWithText:(NSString *)text
                        FontSize:(CGFloat)fontSize
                       TextColor:(UIColor *)textColor;

/**
 创建一个UILabel：背景颜色、文字、文字颜色、文字对齐方式、文字字体大小、显示行数

 @param backgroundColor 背景颜色
 @param text            文字
 @param fontSize        文字字体大小
 @param textColor       文字颜色
 @param textAlignment   文字对齐方式
 @param numberOfLines   显示行数
 @param lineBreakMode   字符截断类型
 */
+ (UILabel *)createLabelWithBackgroundColor:(UIColor *)backgroundColor
                                       Text:(NSString *)text
                                   FontSize:(CGFloat)fontSize
                                  TextColor:(UIColor *)textColor
                              TextAlignment:(NSTextAlignment)textAlignment
                              NumberOfLines:(NSInteger)numberOfLines
                              LineBreakMode:(NSLineBreakMode)lineBreakMode;

#pragma mark UIImageView
/**
 创建一个UIImageView：图片名称、contentMode

 @param imageName   图片名称
 @param contentMode contentMode
 */
+ (UIImageView *)createImageViewWithImageName:(NSString *)imageName
                                  ContentMode:(UIViewContentMode)contentMode;

/**
 创建一个UIImageView：背景颜色、图片名称、contentMode、交互性

 @param backgroundColor          背景颜色
 @param imageName                图片名称
 @param contentMode              contentMode
 @param isUserInteractionEnabled 交互性
 */
+ (UIImageView *)createImageViewWithBackgroundColor:(UIColor *)backgroundColor
                                          ImageName:(NSString *)imageName
                                        ContentMode:(UIViewContentMode)contentMode
                             UserInteractionEnabled:(BOOL)isUserInteractionEnabled;

#pragma mark UIButton
#warning UIButton：添加无背景图片、图片
/**
 创建一个UIButton：背景颜色、背景图片、富文本
 
 @param backgroundColor             背景颜色
 @param backgroundNormalImageName   正常状态下的背景图片
 @param backgroundSelectedImageName 选中状态下的背景图片
 @param normalAttributedTitle       正常状态下的富文本
 @param selectedAttributedTitle     选中状态下的富文本
 */
+ (UIButton *)createButtonWithBackgroundColor:(UIColor *)backgroundColor
                    BackgroundNormalImageName:(NSString *)backgroundNormalImageName
                  BackgroundSelectedImageName:(NSString *)backgroundSelectedImageName
                         NormalAlignmentTitle:(NSAttributedString *)normalAttributedTitle
                       SelectedAlignmentTitle:(NSAttributedString *)selectedAttributedTitle;

/**
 创建一个UIButton：背景颜色、背景图片、文字、文字颜色、文字字体大小

 @param backgroundColor             背景颜色
 @param backgroundNormalImageName   正常状态下的背景图片
 @param backgroundSelectedImageName 选中状态下的背景图片
 @param normalTitle                 正常状态下的文字
 @param selectedTitle               选中状态下的文字
 @param normalTitleColor            正常状态下的文字颜色
 @param selectedTitleColor          选中状态下的文字颜色
 @param titleFontSize               文字字体大小
 */
+ (UIButton *)createButtonWithBackgroundColor:(UIColor *)backgroundColor
                    BackgroundNormalImageName:(NSString *)backgroundNormalImageName
                  BackgroundSelectedImageName:(NSString *)backgroundSelectedImageName
                                  NormalTitle:(NSString *)normalTitle
                                SelectedTitle:(NSString *)selectedTitle
                             NormalTitleColor:(UIColor *)normalTitleColor
                           SelectedTitleColor:(UIColor *)selectedTitleColor
                                TitleFontSize:(CGFloat)titleFontSize;

/**
 创建一个UIButton：背景颜色、图片、富文本

 @param backgroundColor         背景颜色
 @param normalImageName         正常状态下的图片
 @param selectedImageName       选中状态下的图片
 @param normalAttributedTitle   正常状态下的富文本
 @param selectedAttributedTitle 选中状态下的富文本
 */
+ (UIButton *)createButtonWithBackgroundColor:(UIColor *)backgroundColor
                              NormalImageName:(NSString *)normalImageName
                            SelectedImageName:(NSString *)selectedImageName
                         NormalAlignmentTitle:(NSAttributedString *)normalAttributedTitle
                       SelectedAlignmentTitle:(NSAttributedString *)selectedAttributedTitle;

/**
 创建一个UIButton：背景颜色、图片、文字、文字颜色、文字字体大小

 @param backgroundColor    背景颜色
 @param normalImageName    正常状态下的图片
 @param selectedImageName  选中状态下的图片
 @param normalTitle        正常状态下的文字
 @param selectedTitle      选中状态下的文字
 @param normalTitleColor   正常状态下的文字颜色
 @param selectedTitleColor 选中状态下的文字颜色
 @param titleFontSize      文字字体大小
 */
+ (UIButton *)createButtonWithBackgroundColor:(UIColor *)backgroundColor
                              NormalImageName:(NSString *)normalImageName
                            SelectedImageName:(NSString *)selectedImageName
                                  NormalTitle:(NSString *)normalTitle
                                SelectedTitle:(NSString *)selectedTitle
                             NormalTitleColor:(UIColor *)normalTitleColor
                           SelectedTitleColor:(UIColor *)selectedTitleColor
                                TitleFontSize:(CGFloat)titleFontSize;

#pragma mark UITextField

/**
 创建一个UITextField:

 @param backgroundColor        背景颜色
 @param borderStyle            边框样式
 @param backgroundImageName    背景图片：仅UITextBorderStyleNone时有效
 @param fontSize               文字字体大小
 @param textColor              文字颜色
 @param textAlignment          文字对齐方式
 @param attributedPlaceholder  placeholder富文本
 @param isSecureTextEntry      是否密文输入
 @param isClearsOnBeginEditing 是否再次编辑清空：与isSecureTextEntry冲突，当isSecureTextEntry = YES时，默认清空
 @param keyboardType           键盘样式
 @param returnKeyType          return键样式
 @param autocorrectionType     是否使用iPhone的自动更正功能
 @param autocapitalizationType 首字母是否大写
 @param leftViewMode           LeftView展示样式
 @param rightViewMode          RightView展示样式
 @param clearButtonMode        设置一键清除按钮是否出现
 @param leftView               LeftView
 @param rightView              RightView
 */
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
                                          RightView:(UIView *)rightView;

@end
