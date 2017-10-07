//
//  UIScreen+PCCategories.m
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import "UIScreen+PCCategories.h"

@implementation UIScreen (PCCategories)

+ (CGFloat)height {
    return [UIScreen mainScreen].bounds.size.height;
}

+ (CGFloat)width {
    return [UIScreen mainScreen].bounds.size.width;
}

@end
