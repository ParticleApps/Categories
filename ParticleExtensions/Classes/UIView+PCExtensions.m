//
//  UIView+PCExtensions.m
//  Pods
//
//  Created by Rocco Del Priore on 10/28/16.
//
//

#import "UIView+PCExtensions.h"

@implementation UIView (PCExtensions)

- (void)addSubviews:(NSArray <UIView *> *)subviews {
    for (UIView *subview in subviews) {
        [self addSubview:subview];
    }
}

@end
