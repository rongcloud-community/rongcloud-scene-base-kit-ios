//
//  UIImage+RCS.m
//  RCSceneLoginKit
//
//  Created by 彭蕾 on 2022/6/6.
//

#import "UIImage+RCS.h"

@implementation UIImage (RCS)

+ (UIImage *)rcs_imageNamed:(NSString *)imageName
                     bundle:(NSString *)bundleName {
    return [self rcs_imageNamed:imageName podName:bundleName bundle:bundleName];
}

+ (UIImage *)rcs_imageNamed:(NSString *)imageName
                    podName:(NSString *)podName
                     bundle:(NSString *)bundleName {
    if (bundleName.length <= 0 || imageName.length <= 0) {
        return nil;
    }
    
    NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:bundleName withExtension:@"bundle"];
    if (!bundleURL) {
        // use_frameworks
        bundleURL = [[NSBundle mainBundle] URLForResource:@"Frameworks" withExtension:nil];
        bundleURL = [bundleURL URLByAppendingPathComponent:podName];
        bundleURL = [bundleURL URLByAppendingPathExtension:@"framework"];
        NSBundle *associateBundle = [NSBundle bundleWithURL:bundleURL];
        bundleURL = [associateBundle URLForResource:bundleName withExtension:@"bundle"];
    }
    
    NSBundle *imageBundle = [NSBundle bundleWithURL:bundleURL];
    return [UIImage imageNamed:imageName inBundle:imageBundle compatibleWithTraitCollection:nil];
}

/// 根据颜色生产图片
+ (UIImage *)rcs_imageWithColor:(UIColor *)color {
    return [self rcs_imageWithColor:color size:CGSizeMake(1, 1)];
}

/// 根据颜色生产图片
+ (UIImage *)rcs_imageWithColor:(UIColor*)color size:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, CGRectMake(0, 0, size.width, size.height));
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}


@end
