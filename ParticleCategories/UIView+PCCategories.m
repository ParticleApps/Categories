//
//  UIView+PCCategories.m
//  Pods
//
//  Created by Rocco Del Priore on 10/28/16.
//
//

#import "UIView+PCCategories.h"

@implementation UIView (PCCategories)

- (void)addSubviews:(NSArray <UIView *> *)subviews {
    for (UIView *subview in subviews) {
        [self addSubview:subview];
    }
}

- (BOOL)findAndResignFirstResponder {
    if (self.isFirstResponder) {
        [self resignFirstResponder];
        return true;
    }
    for (UIView *subView in self.subviews) {
        if ([subView findAndResignFirstResponder]) {
            return true;
        }
    }
    return true;
}

@end
