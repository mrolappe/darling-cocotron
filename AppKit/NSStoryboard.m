#import <AppKit/NSStoryboard.h>

@implementation NSStoryboard

+ (instancetype)storyboardWithName:(NSStoryboardName)name bundle:(NSBundle*)storyboardBundleOrNil {
    NSStoryboard *sb = [[NSStoryboard alloc] init];

    return [sb autorelease]; 
}

- (id)instantiateInitialController {
    return nil;
}

- (id)instantiateInitialControllerWithCreator:(NSStoryboardControllerCreator)block {
    return nil;
}

- (id)instantiateControllerWithIdentifier:(NSStoryboardSceneIdentifier)identifier {
    return nil;
}

- (id)instantiateControllerWithIdentifier:(NSStoryboardSceneIdentifier)identifier creator:(NSStoryboardControllerCreator)block {
    return nil;
}

@end
