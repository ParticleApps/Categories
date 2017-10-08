//
//  UICollectionView+PCCategories.h
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (PCCategories)

- (void)registerClass:(Class)cellClass forCellType:(NSUInteger)cellType;

@end
