//
//  UIView+PCCategories.h
//  Pods
//
//  Created by Rocco Del Priore on 10/28/16.
//
//

#import <UIKit/UIKit.h>

@interface UIView (PCCategories)

- (void)addSubviews:(NSArray <UIView *> *)subviews;

- (BOOL)findAndResignFirstResponder;

@end
