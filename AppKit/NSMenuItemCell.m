#import <Foundation/Foundation.h>
#import <AppKit/NSButtonCell.h>

@interface NSMenuItemCell : NSButtonCell
@end

@implementation NSMenuItemCell
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    return [NSMethodSignature signatureWithObjCTypes: "v@:"];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    NSLog(@"Stub called: %@ in %@", NSStringFromSelector([anInvocation selector]), [self class]);
}
@end
