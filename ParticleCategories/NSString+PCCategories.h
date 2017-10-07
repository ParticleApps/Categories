//
//  NSString+PCCategories.h
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (PCCategories)

- (NSString *)UUID;

- (NSString *)escapeHTML;

- (NSString *)unescapeHTML;

- (NSString *)stringByAppendingStrings:(NSArray <NSString *>*)strings;

@end
