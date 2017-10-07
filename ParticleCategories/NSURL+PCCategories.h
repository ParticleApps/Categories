//
//  NSURL+PCCategories.h
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (PCCategories)

+ (id)urlWithFormat:(NSString *)format, ... NS_FORMAT_FUNCTION(1, 2);

@end
