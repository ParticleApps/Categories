//
//  UITableView+PCCategories.h
//  Pods
//
//  Created by Rocco Del Priore on 10/28/16.
//
//

#import <UIKit/UIKit.h>

@interface UITableView (PCCategories)

- (void)performUpdates:(dispatch_block_t)updates;

- (void)registerClass:(Class)cellClass forCellType:(NSUInteger)cellType;

- (UITableViewCell *)dequeReusableCellWithType:(NSUInteger)cellType;

@end
