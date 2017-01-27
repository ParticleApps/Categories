//
//  NSURLRequest+PCExtensions.h
//  Pods
//
//  Created by Rocco Del Priore on 1/26/17.
//
//

#import <Foundation/Foundation.h>

@interface NSMutableURLRequest (PCExtensions)

- (void)addQueries:(NSDictionary *)dictionary;

@end
