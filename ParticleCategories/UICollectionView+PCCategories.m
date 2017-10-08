//
//  UICollectionView+PCCategories.m
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import "UICollectionView+PCCategories.h"

@implementation UICollectionView (PCCategories)

- (void)registerClass:(Class)cellClass forCellType:(NSUInteger)cellType {
    [self registerClass:cellClass forCellWithReuseIdentifier:[NSString stringWithFormat:@"%lu", (unsigned long)cellType]];
}


@end
