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

@interface UIPopoverPresentationController : NSObject
@end
@implementation UIPopoverPresentationController
@end
/*

@implementation UIPopoverPresentationController
@dynamic popoverLayoutMargins, backgroundColor, passthroughViews, popoverBackgroundViewClass, arrowDirection;

- (UIEdgeInsets)popoverLayoutMargins {
    return self.jv_legacyPopoverController.popoverLayoutMargins;
}

- (void)setPopoverLayoutMargins:(UIEdgeInsets)newLayoutMargins {
    self.jv_legacyPopoverController.popoverLayoutMargins = newLayoutMargins;
}

- (UIColor*)backgroundColor {
    if ([self.jv_legacyPopoverController respondsToSelector:@selector(backgroundColor)]) {
        return [self.jv_legacyPopoverController backgroundColor];
    } else {
        return nil;
    }
}

- (void)setBackgroundColor:(UIColor*)newColor {
    if ([self.jv_legacyPopoverController respondsToSelector:@selector(setBackgroundColor:)]) {
        return [self.jv_legacyPopoverController setBackgroundColor:newColor];
    }
}

- (NSArray*)passthroughViews {
    return self.jv_legacyPopoverController.passthroughViews;
}

- (void)setPassthroughViews:(NSArray*)newViews {
    self.jv_legacyPopoverController.passthroughViews = newViews;
}

- (Class< UIPopoverBackgroundViewMethods >)popoverBackgroundViewClass {
    return self.jv_legacyPopoverController.popoverBackgroundViewClass;
}

- (void)setPopoverBackgroundViewClass:(Class< UIPopoverBackgroundViewMethods >)newClass {
    self.jv_legacyPopoverController.popoverBackgroundViewClass = newClass;
}

- (UIPopoverArrowDirection)arrowDirection {
    return self.jv_legacyPopoverController.popoverArrowDirection;
}

- (void)popoverController:(UIPopoverController *)popoverController
willRepositionPopoverToRect:(inout CGRect *)rect
                   inView:(inout UIView **)view {

    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(popoverPresentationController:willRepositionPopoverToRect:inView:)]) {

        [self.delegate popoverPresentationController:(UIPopoverPresentationController*)self
                         willRepositionPopoverToRect:rect
                                              inView:view
         ];
    }
}

- (BOOL)popoverControllerShouldDismissPopover:(UIPopoverController *)popoverController {

    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(popoverPresentationControllerShouldDismissPopover:)]) {

        return [self.delegate popoverPresentationControllerShouldDismissPopover:(UIPopoverPresentationController*)self];
    }
    return YES;
}

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController {

    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(popoverPresentationControllerDidDismissPopover:)]) {

        [self.delegate popoverPresentationControllerDidDismissPopover:(UIPopoverPresentationController*)self];
    }
}

@end
*/
#endif

#if __IPHONE_OS_VERSION_MAX_ALLOWED < 70000

@implementation UIPopoverController (JVPopoverController)
//@property (nonatomic, copy) UIColor *backgroundColor;
-(UIColor*)backgroundColor {
    return [UIColor grayColor];
}
-(void)setBackgroundColor:(UIColor *)newColor {
}

@end
#endif
