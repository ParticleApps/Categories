//
//  NSIndexPath+PCCategories.m
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NSIndexPath+PCCategories.h"

@implementation NSIndexPath (PCCategories)

- (NSString *)stringValue {
    return [NSString stringWithFormat:@"(s: %li, r: %li)", self.section, self.row];
}

@end
