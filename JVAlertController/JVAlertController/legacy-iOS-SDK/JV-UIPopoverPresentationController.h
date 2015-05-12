//
//  JVAlertController.m
//  JVAlertController
//
//  The MIT License (MIT)
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

#if __IPHONE_OS_VERSION_MAX_ALLOWED < 80000

#import <UIKit/UIKit.h>
#import "JVCompatibilityMRC.h"


@class JVPopoverPresentationController;
@compatibility_alias UIPopoverPresentationController JVPopoverPresentationController;
//typedef JVPopoverPresentationController UIPopoverPresentationController;


@protocol UIPopoverPresentationControllerDelegate
@optional

- (void)prepareForPopoverPresentation:(UIPopoverPresentationController *)popoverPresentationController;
- (BOOL)popoverPresentationControllerShouldDismissPopover:(UIPopoverPresentationController *)popoverPresentationController;
- (void)popoverPresentationControllerDidDismissPopover:(UIPopoverPresentationController *)popoverPresentationController;
- (void)popoverPresentationController:(UIPopoverPresentationController *)popoverPresentationController
          willRepositionPopoverToRect:(inout CGRect *)rect
                               inView:(inout UIView **)view;

@end

@protocol UIPopoverBackgroundViewMethods
+ (UIEdgeInsets)contentViewInsets;
+ (CGFloat)arrowBase;
+ (CGFloat)arrowHeight;
@end

#endif

#if __IPHONE_OS_VERSION_MAX_ALLOWED < 70000
@interface UIPopoverController (JVPopoverController)
@property (nonatomic, copy) UIColor *backgroundColor;
@end
#endif