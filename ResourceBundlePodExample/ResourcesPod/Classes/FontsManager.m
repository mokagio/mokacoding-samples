
#import "FontsManager.h"
#import <CoreText/CoreText.h>

static NSString * const kBundle = @"ResourceBundle.bundle";

@implementation FontsManager

+ (UIFont *)openSansLightFontOfSize:(CGFloat)size
{
    UIFont *font = [UIFont fontWithName:@"OpenSans-Light" size:size];
    if (!font) {
        [[self class] dynamicallyLoadFontNamed:@"OpenSans-Light"];
        font = [UIFont fontWithName:@"OpenSans-Light" size:size];
        
        // safe fallback
        if (!font) font = [UIFont systemFontOfSize:size];
    }
    
    return font;
}

+ (void)dynamicallyLoadFontNamed:(NSString *)name
{
    NSString *resourceName = [NSString stringWithFormat:@"%@/%@", kBundle, name];
    NSURL *url = [[NSBundle mainBundle] URLForResource:resourceName withExtension:@"ttf"];
    NSData *fontData = [NSData dataWithContentsOfURL:url];
    if (fontData) {
        CFErrorRef error;
        CGDataProviderRef provider = CGDataProviderCreateWithCFData((CFDataRef)fontData);
        CGFontRef font = CGFontCreateWithDataProvider(provider);
        if (! CTFontManagerRegisterGraphicsFont(font, &error)) {
            CFStringRef errorDescription = CFErrorCopyDescription(error);
            NSLog(@"Failed to load font: %@", errorDescription);
            CFRelease(errorDescription);
        }
        CFRelease(font);
        CFRelease(provider);
    }
}

@end
