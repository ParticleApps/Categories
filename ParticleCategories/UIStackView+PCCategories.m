//
//  UIStackView+PCCategories.m
//  Pods
//
//  Created by Rocco Del Priore on 10/28/16.
//
//

#import "UIStackView+PCCategories.h"

@implementation UIStackView (PCCategories)

- (void)addArrangedSubviews:(NSArray <UIView *> *)subviews {
    for (UIView *subview in subviews) {
        [self addArrangedSubview:subview];
    }
}

@end
