//
//  NSData+PCExtensions.m
//  Pods
//
//  Created by Rocco Del Priore on 7/11/17.
//
//

#import "NSData+PCExtensions.h"

@implementation NSData (PCExtensions)

- (NSString *)imageFileType {
    uint8_t c;
    [self getBytes:&c length:1];
    
    switch (c) {
        case 0xFF:
            return @"jpeg";
        case 0x89:
            return @"png";
        case 0x47:
            return @"gif";
        case 0x49:
            break;
        case 0x42:
            return @"bmp";
        case 0x4D:
            return @"tiff";
    }
    return nil;
}

@end
