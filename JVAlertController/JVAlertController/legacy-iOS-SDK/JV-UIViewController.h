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

#import <objc/runtime.h>
#import <UIKit/UIKit.h>
#import "JV-UIView.h"


// just for debugging on iOS5 simuolator. All protocols are compiled into your binary if you compile with the new SDK
#if __IPHONE_OS_VERSION_MAX_ALLOWED < 70000

@protocol UIViewControllerContextTransitioning <NSObject>

- (UIView *)containerView;
- (BOOL)isAnimated;
- (BOOL)isInteractive;
- (BOOL)transitionWasCancelled;
- (UIModalPresentationStyle)presentationStyle;
- (void)updateInteractiveTransition:(CGFloat)percentComplete;
- (void)finishInteractiveTransition;
- (void)cancelInteractiveTransition;
- (void)completeTransition:(BOOL)didComplete;
- (UIViewController *)viewControllerForKey:(NSString *)key;
- (CGRect)initialFrameForViewController:(UIViewController *)vc;
- (CGRect)finalFrameForViewController:(UIViewController *)vc;
@end

@protocol UIViewControllerAnimatedTransitioning <NSObject>
- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext;
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext;

@optional
- (void)animationEnded:(BOOL) transitionCompleted;
@end


@protocol UIViewControllerInteractiveTransitioning <NSObject>
- (void)startInteractiveTransition:(id <UIViewControllerContextTransitioning>)transitionContext;

@optional
- (CGFloat)completionSpeed;
- (UIViewAnimationCurve)completionCurve;

@end


@protocol UIViewControllerTransitioningDelegate <NSObject>

@optional
- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                   presentingController:(UIViewController *)presenting
                                                                       sourceController:(UIViewController *)source;

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed;
- (id <UIViewControllerInteractiveTransitioning>)interactionControllerForPresentation:(id <UIViewControllerAnimatedTransitioning>)animator;
- (id <UIViewControllerInteractiveTransitioning>)interactionControllerForDismissal:(id <UIViewControllerAnimatedTransitioning>)animator;

@end


#define UITransitionContextToViewControllerKey (@"UITransitionContextToViewControllerKey")
#define UITransitionContextFromViewControllerKey (@"UITransitionContextFromViewControllerKey")

@interface UIViewController (UITransitioning)
@property(nonatomic, assign) id< UIViewControllerTransitioningDelegate > transitioningDelegate;
@property(nonatomic) CGSize preferredContentSize;
@end

#endif
