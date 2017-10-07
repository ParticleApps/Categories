//
//  NSDate+PCCategories.m
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import "NSDate+PCCategories.h"
#import "NSDateFormatter+PCCategories.h"

@implementation NSDate (PCCategories)

- (NSString *)stringValue {
    return [[NSDateFormatter formatterWithDateFormat:@"MMM d, yyyy, h:mm a"] stringFromDate:self];
}

@end
