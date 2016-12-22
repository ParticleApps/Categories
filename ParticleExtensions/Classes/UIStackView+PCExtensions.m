//
//  UIStackView+PCExtensions.m
//  Pods
//
//  Created by Rocco Del Priore on 10/28/16.
//
//

#import "UIStackView+PCExtensions.h"

@implementation UIStackView (PCExtensions)

- (void)addArrangedSubviews:(NSArray <UIView *> *)subviews {
    for (UIView *subview in subviews) {
        [self addArrangedSubview:subview];
    }
}

@end
