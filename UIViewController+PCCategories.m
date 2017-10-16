//
//  UIViewController+PCCategories.m
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/16/17.
//

#import "UIViewController+PCCategories.h"

@implementation UIViewController (PCCategories)

- (void)addChildViewControllers:(NSArray <UIViewController *> *)viewControllers {
    for (UIViewController *viewController in viewControllers) {
        [self addChildViewController:viewController];
    }
}

@end
