#import <Foundation/Foundation.h>

typedef NSString *NSStoryboardName;
typedef NSString *NSStoryboardSceneIdentifier;

typedef id _Nullable (^NSStoryboardControllerCreator)(NSCoder * _Nonnull coder);


@interface NSStoryboard : NSObject

@property(class, readonly, strong) NSStoryboard * _Nullable mainStoryboard;

+ (instancetype _Nonnull)storyboardWithName:(NSStoryboardName _Nonnull)name bundle:(NSBundle* _Nullable)storyboardBundleOrNil;

- (id _Nullable)instantiateInitialController;
- (id _Nullable)instantiateInitialControllerWithCreator:(NSStoryboardControllerCreator _Nullable)block;
- (id _Nonnull)instantiateControllerWithIdentifier:(NSStoryboardSceneIdentifier _Nonnull)identifier;
- (id _Nonnull)instantiateControllerWithIdentifier:(NSStoryboardSceneIdentifier _Nonnull)identifier creator:(NSStoryboardControllerCreator _Nullable)block;

@end
