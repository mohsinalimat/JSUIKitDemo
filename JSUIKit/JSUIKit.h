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
 创建一个UILabel：背景颜色、富文本、文字对其方式、显示行数

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
 @param textColor 文字颜色
 @param fontSize  文字字体大小
 */
+ (UILabel *)createLabelWithText:(NSString *)text
                        FontSize:(CGFloat)fontSize
                       TextColor:(UIColor *)textColor;

/**
 创建一个UILabel：背景颜色、文字、文字颜色、文字对其方式、文字字体大小、显示行数

 @param backgroundColor 背景颜色
 @param text            文字
 @param textColor       文字颜色
 @param textAlignment   文字对齐方式
 @param fontSize        文字字体大小
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

@end
