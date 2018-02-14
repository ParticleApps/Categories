//
//  UITableView+PCCategories.m
//  Pods
//
//  Created by Rocco Del Priore on 10/28/16.
//
//

#import "UITableView+PCCategories.h"

@implementation UITableView (PCCategories)

- (void)performUpdates:(dispatch_block_t)updates {
    [self beginUpdates];
    
    if (updates) {
        updates();
    }
    
    [self endUpdates];
}

- (void)registerClass:(Class)cellClass forCellType:(NSUInteger)cellType {
    [self registerClass:cellClass forCellReuseIdentifier:[NSString stringWithFormat:@"%lu", (unsigned long)cellType]];
}

- (UITableViewCell *)dequeReusableCellWithType:(NSUInteger)cellType {
    return [self dequeueReusableCellWithIdentifier:[NSString stringWithFormat:@"%lu", (unsigned long)cellType]];
}

@end
