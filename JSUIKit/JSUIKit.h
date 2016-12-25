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
 创建一个UILabel：背景颜色、富文本、文字对齐方式、显示行数

 @param backgroundColor 背景颜色
 @param attributedText  富文本
 @param textAlignment   文字对齐方式
 @param numberOfLines   显示行数
 @param lineBreakMode   字符截断类型
 */
+ (UILabel *)createLabelWithBackgroundColor:(UIColor *)backgroundColor
                             attributedText:(NSAttributedString *)attributedText
                              textAlignment:(NSTextAlignment)textAlignment
                              numberOfLines:(NSInteger)numberOfLines
                              lineBreakMode:(NSLineBreakMode)lineBreakMode;

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
                                       text:(NSString *)text
                                   fontSize:(CGFloat)fontSize
                                  textColor:(UIColor *)textColor
                              textAlignment:(NSTextAlignment)textAlignment
                              numberOfLines:(NSInteger)numberOfLines
                              lineBreakMode:(NSLineBreakMode)lineBreakMode;

#pragma mark UIImageView
/**
 创建一个UIImageView：背景颜色、图片名称、contentMode、交互性

 @param backgroundColor          背景颜色
 @param imageName                图片名称
 @param contentMode              contentMode
 @param isUserInteractionEnabled 交互性
 */
+ (UIImageView *)createImageViewWithBackgroundColor:(UIColor *)backgroundColor
                                          imageName:(NSString *)imageName
                                        contentMode:(UIViewContentMode)contentMode
                             userInteractionEnabled:(BOOL)isUserInteractionEnabled;

#pragma mark UIButton
/**
 创建一个UIButton：背景颜色、背景图片、富文本
 
 @param backgroundColor             背景颜色
 @param backgroundNormalImageName   正常状态下的背景图片
 @param backgroundSelectedImageName 选中状态下的背景图片
 @param normalAttributedTitle       正常状态下的富文本
 @param selectedAttributedTitle     选中状态下的富文本
 */
+ (UIButton *)createButtonWithBackgroundColor:(UIColor *)backgroundColor
                    backgroundNormalImageName:(NSString *)backgroundNormalImageName
                  backgroundSelectedImageName:(NSString *)backgroundSelectedImageName
                        normalAttributedTitle:(NSAttributedString *)normalAttributedTitle
                      selectedAttributedTitle:(NSAttributedString *)selectedAttributedTitle;

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
                    backgroundNormalImageName:(NSString *)backgroundNormalImageName
                  backgroundSelectedImageName:(NSString *)backgroundSelectedImageName
                                  normalTitle:(NSString *)normalTitle
                                selectedTitle:(NSString *)selectedTitle
                             normalTitleColor:(UIColor *)normalTitleColor
                           selectedTitleColor:(UIColor *)selectedTitleColor
                                titleFontSize:(CGFloat)titleFontSize;

/**
 创建一个UIButton：背景颜色、图片、富文本

 @param backgroundColor         背景颜色
 @param normalImageName         正常状态下的图片
 @param selectedImageName       选中状态下的图片
 @param normalAttributedTitle   正常状态下的富文本
 @param selectedAttributedTitle 选中状态下的富文本
 */
+ (UIButton *)createButtonWithBackgroundColor:(UIColor *)backgroundColor
                              normalImageName:(NSString *)normalImageName
                            selectedImageName:(NSString *)selectedImageName
                        normalAttributedTitle:(NSAttributedString *)normalAttributedTitle
                      selectedAttributedTitle:(NSAttributedString *)selectedAttributedTitle;

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
                              normalImageName:(NSString *)normalImageName
                            selectedImageName:(NSString *)selectedImageName
                                  normalTitle:(NSString *)normalTitle
                                selectedTitle:(NSString *)selectedTitle
                             normalTitleColor:(UIColor *)normalTitleColor
                           selectedTitleColor:(UIColor *)selectedTitleColor
                                titleFontSize:(CGFloat)titleFontSize;

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
                                          rightView:(UIView *)rightView;

#pragma mark UITextView
/**
 创建一个UITextView:

 @param backgroundColor       背景颜色
 @param fontSize              文字字体大小
 @param textColor             文字颜色
 @param textAlignment         文字对齐方式
 @param attributedPlaceholder placeholder富文本
 @param isScrollEnabled       当文字超过视图的边框时是否允许滑动
 @param keyboardType          键盘样式
 @param returnKeyType         return键样式
 @param dataDetectorTypes     显示数据类型的连接模式（如电话号码、网址、地址等）
 */
+ (UITextView *)createTextViewWithBackgroundColor:(UIColor *)backgroundColor
                                         fontSize:(CGFloat)fontSize
                                        textColor:(UIColor *)textColor
                                    textAlignment:(NSTextAlignment)textAlignment
                            attributedPlaceholder:(NSAttributedString *)attributedPlaceholder
                                    scrollEnabled:(BOOL)isScrollEnabled
                                     keyboardType:(UIKeyboardType)keyboardType
                                    returnKeyType:(UIReturnKeyType)returnKeyType
                                dataDetectorTypes:(UIDataDetectorTypes)dataDetectorTypes;

@end
