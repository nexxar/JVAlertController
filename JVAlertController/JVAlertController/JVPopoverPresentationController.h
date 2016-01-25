//
//  JVPopoverPresentationController.m
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

#import <objc/runtime.h>
#import <UIKit/UIKit.h>
#import "JVCompatibilityMRC.h"
#import "JV-legacy-SDK.h"

@interface JVPopoverPresentationController : NSObject <UIPopoverControllerDelegate>
@property (nonatomic, JV_STRONG_PROPERTY) UIView *sourceView;
@property (nonatomic) CGRect sourceRect;
@property (nonatomic, JV_STRONG_PROPERTY) UIBarButtonItem *barButtonItem;
@property (nonatomic, JV_WEAK_PROPERTY) id<UIPopoverPresentationControllerDelegate> delegate;
@property(nonatomic, readwrite) UIEdgeInsets popoverLayoutMargins;
@property(nonatomic, copy) UIColor *backgroundColor;
@property(nonatomic, copy) NSArray *passthroughViews;
@property(nonatomic, readwrite, JV_STRONG_PROPERTY) Class< UIPopoverBackgroundViewMethods > popoverBackgroundViewClass;
@property(nonatomic, assign) UIPopoverArrowDirection permittedArrowDirections;
@property(nonatomic, readonly) UIPopoverArrowDirection arrowDirection;
@property(nonatomic, readwrite, JV_WEAK_PROPERTY) UIPopoverController *jv_legacyPopoverController;
@end

