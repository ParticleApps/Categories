//
//  UIColor+PCCategories.m
//  ParticleCategories
//
//  Created by Rocco Del Priore on 10/7/17.
//  Copyright © 2017 Particle. All rights reserved.
//

#import "UIColor+PCCategories.h"

@interface NSString (PCPrivateAdditions)
- (NSUInteger)hexValue;
@end

@implementation NSString (PCPrivateAdditions)
- (NSUInteger)hexValue {
    NSUInteger result = 0;
    sscanf([self UTF8String], "%lx", (unsigned long *)&result);
    return result;
}
@end

@implementation UIColor (PCCategories)

+ (instancetype)colorWithHex:(NSString *)hex {
    // Remove `#` and `0x`
    if ([hex hasPrefix:@"#"]) {
        hex = [hex substringFromIndex:1];
    } else if ([hex hasPrefix:@"0x"]) {
        hex = [hex substringFromIndex:2];
    }
    
    // Invalid if not 3, 6, or 8 characters
    NSUInteger length = [hex length];
    if (length != 3 && length != 6 && length != 8) {
        return nil;
    }
    
    // Make the string 8 characters long for easier parsing
    if (length == 3) {
        NSString *r = [hex substringWithRange:NSMakeRange(0, 1)];
        NSString *g = [hex substringWithRange:NSMakeRange(1, 1)];
        NSString *b = [hex substringWithRange:NSMakeRange(2, 1)];
        hex = [NSString stringWithFormat:@"%@%@%@%@%@%@ff",
               r, r, g, g, b, b];
    } else if (length == 6) {
        hex = [hex stringByAppendingString:@"ff"];
    }
    
    CGFloat red = [[hex substringWithRange:NSMakeRange(0, 2)] hexValue] / 255.0f;
    CGFloat green = [[hex substringWithRange:NSMakeRange(2, 2)] hexValue] / 255.0f;
    CGFloat blue = [[hex substringWithRange:NSMakeRange(4, 2)] hexValue] / 255.0f;
    CGFloat alpha = [[hex substringWithRange:NSMakeRange(6, 2)] hexValue] / 255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

- (NSString *)hexValue {
    CGColorRef color = self.CGColor;
    size_t count = CGColorGetNumberOfComponents(color);
    const CGFloat *components = CGColorGetComponents(color);
    
    NSString *hex = nil;
    
    // Grayscale
    if (count == 2) {
        NSUInteger white = (NSUInteger)(components[0] * 255.0f);
        hex = [NSString stringWithFormat:@"%02lx%02lx%02lx", (unsigned long)white, (unsigned long)white, (unsigned long)white];
    }
    
    // RGB
    else if (count == 4) {
        hex = [NSString stringWithFormat:@"%02lx%02lx%02lx", (unsigned long)(components[0] * 255.0f),
               (unsigned long)(components[1] * 255.0f), (unsigned long)(components[2] * 255.0f)];
    }
    
    // Unsupported color space
    return hex;
}

@end
