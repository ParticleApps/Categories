//
//  NSAttributedString+PCExtensions.m
//  Pods
//
//  Created by Rocco Del Priore on 5/12/17.
//
//

#import "NSAttributedString+PCExtensions.h"

@implementation NSAttributedString (PCExtensions)

- (CGFloat)heightForContrainedWidth:(CGFloat)width {
    NSStringDrawingContext *context = [[NSStringDrawingContext alloc] init];
    CGSize boundingBox = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin context:context].size;
    return boundingBox.height;
}

- (CGFloat)widthForContrainedHeight:(CGFloat)height {
    NSStringDrawingContext *context = [[NSStringDrawingContext alloc] init];
    CGSize boundingBox = [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height) options:NSStringDrawingUsesLineFragmentOrigin context:context].size;
    return boundingBox.width;
}

@end
