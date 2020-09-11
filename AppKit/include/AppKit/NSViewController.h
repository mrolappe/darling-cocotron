#import <AppKit/NSResponder.h>
#import <AppKit/NSNib.h>

@class NSView;

@interface NSViewController : NSResponder {
    NSString *_nibName;
    NSBundle *_nibBundle;
    id _representedObject;
    NSString *_title;
    NSView *_view;
}

@property(strong) IBOutlet NSView *view;
@property(strong, readonly) NSBundle *nibBundle;
@property(copy, readonly) NSNibName nibName;
@property(copy) NSString *title;

- initWithNibName: (NSString *) name bundle: (NSBundle *) bundle;

- representedObject;

- (void) setRepresentedObject: object;

- (void) loadView;

- (void) viewDidLoad;

- (void) discardEditing;

- (BOOL) commitEditing;
- (void) commitEditingWithDelegate: delegate
                 didCommitSelector: (SEL) didCommitSelector
                       contextInfo: (void *) contextInfo;

@end
