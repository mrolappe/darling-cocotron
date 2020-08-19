#import <AppKit/NSStoryboard.h>

@interface NSStoryboard ()

@property NSString *storyboardPath;
@property NSString *initialController;
@property NSDictionary *dictIdentifier;
@property NSDictionary *dictUUID;
@property NSNumber *versionNumber;

@end


@implementation NSStoryboard 

@dynamic mainStoryboard;
@synthesize storyboardPath = _storyboardPath;
@synthesize initialController = _initialController;
@synthesize dictIdentifier = _dictIdentifier;
@synthesize dictUUID = _dictUUID;
@synthesize versionNumber = _versionNumber;

+ (instancetype)storyboardWithName:(NSStoryboardName)name bundle:(NSBundle*)storyboardBundleOrNil {
    NSStoryboard *sb = [[NSStoryboard alloc] init];

    NSBundle *storyboardBundle = storyboardBundleOrNil == nil ? [NSBundle mainBundle] : storyboardBundleOrNil;
    NSString *storyboardPath = [storyboardBundle pathForResource:name ofType:@"storyboardc"];

    NSString *const infoPath = [storyboardPath stringByAppendingString:@"/Info.plist"];
    NSData *storyboardData = [NSData dataWithContentsOfFile:infoPath];
    NSDictionary *infoDict = [NSPropertyListSerialization propertyListWithData:storyboardData options:NSPropertyListImmutable format:nil error:nil];

    [sb setStoryboardPath:storyboardPath];
    [sb setDictIdentifier:infoDict[@"NSViewControllerIdentifiersToNibNames"]];
    [sb setDictUUID:infoDict[@"NSViewControllerIdentifiersToUUIDs"]];
    [sb setInitialController:infoDict[@"NSStoryboardMainMenu"]];
    [sb setVersionNumber:infoDict[@"NSStoryboardVersion"]];
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

- (NSStoryboard *)mainStoryboard {
    return nil;
}

@end
