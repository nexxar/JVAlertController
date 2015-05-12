//
//  JVAlertControllerStyles.m
//  JVAlertController
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 Jared Verdi
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//  the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "JVAlertControllerStyles.h"

const CGFloat kJVAlertWidth = 270.0f;
const CGFloat kJVAlertCornerRadius = 7.0f;
const CGFloat kJVAlertButtonHeight = 44.0f;
const CGFloat kJVAlertButtonHPadding = 12.0f;
const CGFloat kJVAlertButtonVPaddingTop = 12.0f;
const CGFloat kJVAlertButtonVPaddingBottom = 11.5f;
const CGFloat kJVAlertButtonMinimumScaleFactor = 0.58f;
const CGFloat kJVAlertContentHPadding = 16.0f;
const CGFloat kJVAlertContentVPadding = 20.5f;
const CGFloat kJVAlertContentTextFieldBottomPadding = 12.0f;
const CGFloat kJVAlertObscureViewAlpha = 0.4f;
const CGFloat kJVAlertAnimationDuration = 0.4f;
const CGFloat kJVAlertAnimationSpringDamping = 45.0f;
const CGFloat kJVAlertAnimationStartingScale = 1.25f;
const CGFloat kJVAlertAnimationEndingScale = 0.85f;

const CGFloat kJVActionSheetWidth = 304.0f;
const CGFloat kJVActionSheetPopoverWidth = 304.0f;
const CGFloat kJVActionSheetCornerRadius = 4.0f;
const CGFloat kJVActionSheetCancelButtonCornerRadius = 4.0f;
const CGFloat kJVActionSheetButtonHeight = 44.0f;
const CGFloat kJVActionSheetButtonSpacing_legacyiOS = 10.0f;
const CGFloat kJVActionSheetButtonHPadding = 12.0f;
const CGFloat kJVActionSheetButtonVPaddingTop = 9.5f;
const CGFloat kJVActionSheetButtonVPaddingBottom = 9.0f;
const CGFloat kJVActionSheetButtonMinimumScaleFactor = 0.58f;
const CGFloat kJVActionSheetTitleMessageVPadding = 10.5f;
const CGFloat kJVActionSheetContentHPadding = 16.0f;
const CGFloat kJVActionSheetContentVPadding = 14.0f;
const CGFloat kJVActionSheetVMargin = 8.0f;
const CGFloat kJVActionSheetObscureViewAlpha = 0.4f;
const CGFloat kJVActionSheetObscureViewAlphaPad = 0.15f;
const CGFloat kJVActionSheetAnimationDuration = 0.3f;

const CGFloat kJVAlertControllerTextFieldPadding = 4.0f;

@implementation JVAlertControllerStyles

+ (UIColor *)alertTitleColor
{
    return [UIColor blackColor];
}

+ (UIFont *)alertTitleFont
{
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
    if ([UIFont respondsToSelector:@selector(preferredFontForTextStyle:)]) {
        return [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    }
#endif
    return [UIFont systemFontOfSize:[UIFont labelFontSize]];
}

+ (NSTextAlignment)alertTitleTextAlignment
{
    return NSTextAlignmentCenter;
}

+ (UIColor *)alertMessageColor
{
    return [UIColor blackColor];
}

+ (UIFont *)alertMessageFont
{
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
    if ([UIFont respondsToSelector:@selector(preferredFontForTextStyle:)]) {
        return [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    }
#endif
    return [UIFont systemFontOfSize:[UIFont systemFontSize]];
}

+ (NSTextAlignment)alertMessageTextAlignment
{
    return NSTextAlignmentCenter;
}

+ (UIColor *)alertButtonSeparatorBackgroundColor
{
    return [UIColor colorWithWhite:0.5f alpha:0.5f];
}

+ (UIColor *)alertButtonHighlightedBackgroundColor
{
    return [UIColor colorWithWhite:0.0f alpha:0.05f];
}

+ (UIColor *)alertButtonDefaultTextColor
{
    return [UIColor colorWithRed:0.0f green:0.48f blue:1.0f alpha:1.0f];
}

+ (UIColor *)alertButtonDisabledTextColor
{
    return [UIColor colorWithWhite:0.39f alpha:0.8f];
}

+ (UIColor *)alertButtonDestructiveTextColor
{
    return [UIColor colorWithRed:1.0f green:0.23f blue:0.19f alpha:1.0f];
}

+ (UIColor *)alertButtonCancelTextColor
{
    return [UIColor colorWithRed:0.0f green:0.48f blue:1.0f alpha:1.0f];
}

+ (UIFont *)alertButtonFont
{
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
    if ([UIFont respondsToSelector:@selector(preferredFontForTextStyle:)]) {
        return [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    }
#endif
    return [UIFont systemFontOfSize:[UIFont buttonFontSize]];
}

+ (UIFont *)alertLastButtonFont
{
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
    if ([UIFont respondsToSelector:@selector(preferredFontForTextStyle:)]) {
        return [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    }
#endif
    return [UIFont systemFontOfSize:[UIFont labelFontSize]];
}

+ (UIColor *)alertTextFieldBorderColor
{
    return [UIColor colorWithWhite:0.25f alpha:1.0f];
}

+ (CGFloat)alertTextFieldBorderWidth
{
    return JVAC_PIXEL;
}

+ (UIFont *)alertTextFieldFont
{
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
    if ([UIFont respondsToSelector:@selector(preferredFontForTextStyle:)]) {
        return [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    }
#endif
    return [UIFont systemFontOfSize:[UIFont smallSystemFontSize]];
}

+ (UIColor *)alertObscureViewBackgroundColor
{
    return [UIColor blackColor];
}


+ (UIColor *)actionSheetTitleColor
{
    return [UIColor colorWithWhite:0.56f alpha:1.0f];
}

+ (UIFont *)actionSheetTitleFont
{
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
    if ([UIFont respondsToSelector:@selector(preferredFontForTextStyle:)]) {
        UIFontDescriptor *descriptor = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
        return [UIFont fontWithName:@"HelveticaNeue-Medium" size:descriptor.pointSize];
    }
#endif
    return [UIFont fontWithName:@"HelveticaNeue-Medium" size:[UIFont systemFontSize]];
}

+ (NSTextAlignment)actionSheetTitleTextAlignment
{
    return NSTextAlignmentCenter;
}

+ (UIColor *)actionSheetMessageColor
{
    return [UIColor colorWithWhite:0.56f alpha:1.0f];
}

+ (UIFont *)actionSheetMessageFont
{
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
    if ([UIFont respondsToSelector:@selector(preferredFontForTextStyle:)]) {
        return [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    }
#endif
    return [UIFont systemFontOfSize:([UIFont systemFontSize] * 1.23529411764706f)];
}

+ (NSTextAlignment)actionSheetMessageTextAlignment
{
    return NSTextAlignmentCenter;
}

+ (UIColor *)actionSheetButtonSeparatorBackgroundColor
{
    return [UIColor colorWithWhite:0.5f alpha:0.5f];
}

+ (UIColor *)actionSheetButtonHighlightedBackgroundColor
{
    return [UIColor colorWithWhite:0.0f alpha:0.075f];
}

+ (UIColor *)actionSheetButtonDefaultTextColor
{
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
    if ([UIFont respondsToSelector:@selector(preferredFontForTextStyle:)]) {
        return [UIColor colorWithRed:0.0f green:0.48f blue:1.0f alpha:1.0f];
    }
#endif
    // in iOS <= 6 black is the color for button labels
    return [UIColor blackColor];
}

+ (UIColor *)actionSheetButtonDisabledTextColor
{
    return [UIColor colorWithWhite:0.29f alpha:1.0f];
}

+ (UIColor *)actionSheetButtonDestructiveTextColor
{
    return [UIColor colorWithRed:1.0f green:0.23f blue:0.19f alpha:1.0f];
}

+ (UIColor *)actionSheetButtonCancelTextColor
{
    return [UIColor colorWithRed:0.0f green:0.48f blue:1.0f alpha:1.0f];
}

+ (UIFont *)actionSheetButtonFont
{
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
    if ([UIFont respondsToSelector:@selector(preferredFontForTextStyle:)]) {
        UIFontDescriptor *descriptor = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
        CGFloat pointSize = descriptor.pointSize * 1.23529411764706f;
        return [UIFont fontWithDescriptor:descriptor size:pointSize];
    }
#endif
    return [UIFont boldSystemFontOfSize:[UIFont buttonFontSize]* 1.25f];
}

+ (UIFont *)actionSheetCancelButtonFont
{
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
    if ([UIFont respondsToSelector:@selector(preferredFontForTextStyle:)]) {
        UIFontDescriptor *descriptor = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline];
        CGFloat pointSize = descriptor.pointSize * 1.23529411764706f;
        return [UIFont fontWithDescriptor:descriptor size:pointSize];
    }
#endif
    return [UIFont boldSystemFontOfSize:[UIFont buttonFontSize]* 1.25f];
}

+ (UIColor *)actionSheetCancelButtonHighlightedBackgroundColor
{
    return [UIColor colorWithWhite:0.0f alpha:0.1f];
}

+ (UIColor *)actionSheetObscureViewBackgroundColor
{
    return [UIColor blackColor];
}

@end
