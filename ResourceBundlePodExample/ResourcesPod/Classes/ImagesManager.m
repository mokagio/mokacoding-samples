
#import "ImagesManager.h"

@implementation ImagesManager

+ (UIImage *)polarBear
{
    NSString *imageName = [NSString stringWithFormat:@"%@/%@", @"ResourceBundle.bundle", @"polar-bear.jpg"];
    NSURL *imageUrl = [[NSBundle mainBundle] URLForResource:imageName withExtension:nil];
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:imageUrl]];
    return image;
}

@end
