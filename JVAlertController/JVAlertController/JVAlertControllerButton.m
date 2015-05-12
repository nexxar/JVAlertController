//
//  JVAlertControllerButton.m
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

#import "JV-legacy-SDK.h"
#import "JVAlertControllerButton.h"

#define JVAC_SYSTEM_VERSION_GTE(v) \
([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

@implementation JVAlertControllerButton
{
    UIColor *_originalBackgroundColor;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        if (!JVAC_SYSTEM_VERSION_GTE(@"7.0")) {
            self.backgroundColor = [UIColor whiteColor];

            UITapGestureRecognizer *newTapRecogniser = [UITapGestureRecognizer new];
            [self addGestureRecognizer:newTapRecogniser];
            [newTapRecogniser addTarget:self action:@selector(performAction)];
            JV_RELEASE_OBJECT(newTapRecogniser);

        }
        [self addObserver:self forKeyPath:@"highlighted" options:NSKeyValueObservingOptionNew context:NULL];
        _originalBackgroundColor = self.backgroundColor;
        JV_RETAIN_OBJECT(_originalBackgroundColor);
    }
    return self;
}

- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"highlighted"];
    JV_RELEASE_OBJECT(_originalBackgroundColor);
    JV_SUPER_DEALLOC;
}

- (void)performAction {
    [self sendActionsForControlEvents:UIControlEventTouchUpInside];
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    [super setBackgroundColor:backgroundColor];
    JV_RELEASE_OBJECT(_originalBackgroundColor);
    _originalBackgroundColor = backgroundColor;
    JV_RETAIN_OBJECT(_originalBackgroundColor);
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"highlighted"]) {
        if (self.isHighlighted) {
            [super setBackgroundColor:self.highlightedBackgroundColor];
        }
        else {
            [super setBackgroundColor:_originalBackgroundColor];
        }
    }
}

@end
