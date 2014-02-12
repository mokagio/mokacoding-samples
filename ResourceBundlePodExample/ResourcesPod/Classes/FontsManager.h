
/**
 *  Fonts manager is responsible to load up the fonts from the resource bundle.
 *
 *  Not that this is just an example implementation, better things could be done, like a sharedInstace
 *  instead of a class method, and an enum of the many different fonts rather that a new method for
 *  each of those.
 *
 *  See http://www.marco.org/2012/12/21/ios-dynamic-font-loading
 */
#import <Foundation/Foundation.h>

@interface FontsManager : NSObject

+ (UIFont *)openSansLightFontOfSize:(CGFloat)size;

@end
