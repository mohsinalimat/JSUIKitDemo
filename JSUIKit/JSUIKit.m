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

@end
