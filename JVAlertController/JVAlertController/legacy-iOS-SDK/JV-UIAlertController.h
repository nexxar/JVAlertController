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

#import "JVAlertControllerStyles.h"
#import "JVAlertAction.h"
#import "JV-UIPopoverPresentationController.h"
#import "JV-UIAlertAction.h"
#import "JV-UIView.h"
#import "JV-UIViewController.h"
#import "JVPopoverPresentationController.h"
#import <objc/runtime.h>
#import <UIKit/UIKit.h>

#if __IPHONE_OS_VERSION_MAX_ALLOWED < 80000

typedef enum UIAlertControllerStyle: NSInteger {
    UIAlertControllerStyleActionSheet = 0,
    UIAlertControllerStyleAlert
} UIAlertControllerStyle;

#define UIModalPresentationCustom 4
#define UIModalPresentationOverFullScreen 5
#define UIModalPresentationOverCurrentContext 6
#define UIModalPresentationPopover 7


@interface JVAlertController : UIViewController

@property (nonatomic, readonly) NSArray *actions;
@property (nonatomic, readonly) NSArray *textFields;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *message;

@property (nonatomic, readonly) UIAlertControllerStyle preferredStyle;

@property (nonatomic, readonly) UIPopoverPresentationController *popoverPresentationController;

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message
                          preferredStyle:(UIAlertControllerStyle)preferredStyle;
- (void)addAction:(id)action;
- (void)addTextFieldWithConfigurationHandler:(void (^)(UITextField *textField))configurationHandler;

@end


@interface UIAlertController : JVAlertController
@end

#endif


