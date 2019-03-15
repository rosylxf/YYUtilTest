//
//  UIImage+Circle.m
//  YYReader
//
//  Created by cbs on 14/12/2016.
//  Copyright © 2016 citicpub. All rights reserved.
//

#import "UIImage+Circle.h"

@implementation UIImage (Circle)

- (instancetype)circleImage
{
    UIGraphicsBeginImageContext(self.size);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctx, rect);
    CGContextClip(ctx);
    [self drawInRect:rect];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (instancetype)circleImage:(NSString *)image
{
    return [[self imageNamed:image] circleImage];
}

@end
