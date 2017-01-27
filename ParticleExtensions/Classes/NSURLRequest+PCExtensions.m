//
//  NSURLRequest+PCExtensions.m
//  Pods
//
//  Created by Rocco Del Priore on 1/26/17.
//
//

#import "NSURLRequest+PCExtensions.h"

@implementation NSMutableURLRequest (PCExtensions)

- (void)addQueries:(NSDictionary *)dictionary {
    if (dictionary.allKeys.count) {
        NSMutableString *string = [[NSMutableString alloc] initWithString:@""];
        for (NSString *key in dictionary.allKeys) {
            if (string.length == 0) {
                [string appendString:[NSString stringWithFormat:@"?%@=%@", key, dictionary[key]]];
            }
            else {
                [string appendString:[NSString stringWithFormat:@"&%@=%@", key, dictionary[key]]];
            }
        }
        
        NSString *appendix = [string stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSString *stringValue = [self.URL.absoluteString stringByAppendingString:appendix];
        self.URL = [NSURL URLWithString:stringValue];
    }
}

@end
