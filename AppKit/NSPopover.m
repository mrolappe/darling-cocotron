#import <Foundation/NSObject.h>
#import <Foundation/NSNotification.h>

// DUMMY
const NSString *NSPopoverDidCloseNotification =
        @"NSPopoverDidCloseNotification";
const NSString *NSPopoverWillCloseNotification =
        @"NSPopoverWillCloseNotification";
const NSString *NSPopoverDidShowNotification =
        @"NSPopoverDidShowNotification";

const NSNotificationName NSPopoverWillShowNotification = @"NSPopoverWillShowNotification";

@interface NSPopover : NSObject
@end

@implementation NSPopover
- (NSMethodSignature *) methodSignatureForSelector: (SEL) aSelector {
    return [NSMethodSignature signatureWithObjCTypes: "v@:"];
}

- (void) forwardInvocation: (NSInvocation *) anInvocation {
    NSLog(@"Stub called: %@ in %@",
          NSStringFromSelector([anInvocation selector]), [self class]);
}
@end
