
/**
 *  ImagesManager is responsible to load up the images from the resource bundle.
 *
 *  Not that this is just an example implementation, better things could be done, like a sharedInstace
 *  instead of a class method, an enum of the many different images rather that a new method for
 *  each of those, and some smart use of cache
 */

#import <Foundation/Foundation.h>

@interface ImagesManager : NSObject

+ (UIImage *)polarBear;

@end
