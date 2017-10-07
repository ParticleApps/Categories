//
//  NSDateFormatter+PCCategories.m
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import "NSDateFormatter+PCCategories.h"

@implementation NSDateFormatter (PCCategories)

+ (NSDateFormatter *)formatterWithDateFormat:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    return formatter;
}

+ (NSDateFormatter *)formatterWithStyle:(NSDateFormatterStyle)style {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:style];
    [formatter setTimeStyle:style];
    return formatter;
}

+ (NSDateFormatter *)formatterWithDateStyle:(NSDateFormatterStyle)style {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:style];
    return formatter;
}

+ (NSDateFormatter *)formatterWithTimeStyle:(NSDateFormatterStyle)style {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:style];
    return formatter;
}

@end
