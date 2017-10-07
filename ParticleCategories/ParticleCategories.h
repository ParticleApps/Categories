//
//  ParticleCategories.h
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for ParticleCategories.
FOUNDATION_EXPORT double ParticleCategoriesVersionNumber;

//! Project version string for ParticleCategories.
FOUNDATION_EXPORT const unsigned char ParticleCategoriesVersionString[];

#import "NSAttributedString+PCCategories.h"
#import "NSString+PCCategories.h"
#import "NSData+PCCategories.h"
#import "NSDateFormatter+PCCategories.h"
#import "NSURL+PCCategories.h"

#import "UIStackView+PCCategories.h"
#import "UITableView+PCCategories.h"
#import "UIScreen+PCCategories.h"
#import "UIControl+PCCategories.h"
#import "UIColor+PCCategories.h"
#import "UIView+PCCategories.h"

static inline NSString * NSStringForNSIndexPath(NSIndexPath *indexPath) {
    return [NSString stringWithFormat:@"(s: %li, r: %li)", indexPath.section, indexPath.row];
}
