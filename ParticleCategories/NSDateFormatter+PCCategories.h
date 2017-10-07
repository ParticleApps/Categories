//
//  NSDateFormatter+PCCategories.h
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDateFormatter (PCCategories)

+ (NSDateFormatter *)formatterWithDateFormat:(NSString *)format;

+ (NSDateFormatter *)formatterWithStyle:(NSDateFormatterStyle)style;

+ (NSDateFormatter *)formatterWithDateStyle:(NSDateFormatterStyle)style;

+ (NSDateFormatter *)formatterWithTimeStyle:(NSDateFormatterStyle)style;

@end
