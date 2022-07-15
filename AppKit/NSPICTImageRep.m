#import <Foundation/Foundation.h>
#import <AppKit/NSImageRep.h>

@interface NSPICTImageRep : NSImageRep
@end

@implementation NSPICTImageRep
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    return [NSMethodSignature signatureWithObjCTypes: "v@:"];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    NSLog(@"Stub called: %@ in %@", NSStringFromSelector([anInvocation selector]), [self class]);
}
@end
