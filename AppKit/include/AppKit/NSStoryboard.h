#import <Foundation/Foundation.h>

typedef NSString *NSStoryboardName;
typedef NSString *NSStoryboardSceneIdentifier;

typedef id _Nullable (^NSStoryboardControllerCreator)(NSCoder *coder);


@interface NSStoryboard : NSObject

@property(class, readonly, strong) NSStoryboard *mainStoryboard;

+ (instancetype)storyboardWithName:(NSStoryboardName)name bundle:(NSBundle*)storyboardBundleOrNil;

- (id)instantiateInitialController;
- (id)instantiateInitialControllerWithCreator:(NSStoryboardControllerCreator)block;
- (id)instantiateControllerWithIdentifier:(NSStoryboardSceneIdentifier)identifier;
- (id)instantiateControllerWithIdentifier:(NSStoryboardSceneIdentifier)identifier creator:(NSStoryboardControllerCreator)block;

@end
