//
//  NSAttributedString+PCExtensions.h
//  Pods
//
//  Created by Rocco Del Priore on 5/12/17.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (PCExtensions)

- (CGFloat)heightForContrainedWidth:(CGFloat)width;

- (CGFloat)widthForContrainedHeight:(CGFloat)height;

@end
