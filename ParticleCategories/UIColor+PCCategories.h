//
//  UIColor+PCCategories.h
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (PCCategories)

+ (instancetype)colorWithHex:(NSString *)hex;

- (NSString *)hexValue;

@end
