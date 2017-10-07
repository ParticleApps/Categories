//
//  NSURL+PCCategories.m
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import "NSURL+PCCategories.h"

@implementation NSURL (PCCategories)

+ (id)urlWithFormat:(NSString *)format, ... {
    va_list arguments;
    va_start(arguments, format);
    NSString *string = [[NSString alloc] initWithFormat:format arguments:arguments];
    va_end(arguments);
    
    return [NSURL URLWithString:string];
}

@end
