//
//  NSNumberFormatter+PCCategories.m
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import <objc/runtime.h>

#import "NSNumberFormatter+PCCategories.h"

NSInteger const NSNumberFormatterStyleStorage = -20;

@implementation NSNumberFormatter (PCCategories)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SEL originalSelector = @selector(localizedStringFromNumber:numberStyle:);
        SEL swizzledSelector = @selector(customStringFromNumber:numberStyle:);
        
        Class class = object_getClass((id)self);
        
        Method originalMethod = class_getClassMethod(class, originalSelector);
        Method swizzledMethod = class_getClassMethod(class, swizzledSelector);
        
        BOOL didAddMethod =
        class_addMethod(class,
                        originalSelector,
                        method_getImplementation(swizzledMethod),
                        method_getTypeEncoding(swizzledMethod));
        
        if (didAddMethod) {
            class_replaceMethod(class,
                                swizzledSelector,
                                method_getImplementation(originalMethod),
                                method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

+ (NSString *)customStringFromNumber:(NSNumber *)number numberStyle:(NSNumberFormatterStyle)style {
    if (style == NSNumberFormatterStyleStorage) {
        float kilobyte = 1000;
        float megabyte = 1e+6;
        float gigabyte = 1e+9;
        
        if (number.floatValue > gigabyte) {
            return [NSString stringWithFormat:@"%.02fgb", number.floatValue/gigabyte];
        }
        else if (number.floatValue > megabyte) {
            return [NSString stringWithFormat:@"%.02fmb", number.floatValue/megabyte];
        }
        else if (number.floatValue > kilobyte) {
            return [NSString stringWithFormat:@"%.02fkb", number.floatValue/kilobyte];
        }
        return [NSString stringWithFormat:@"%.02f bytes", number.floatValue];
    }
    return [self customStringFromNumber:number numberStyle:style];
}

@end
