#import <Preferences/Preferences.h>

@interface panicLockiOS8PrefsListController: PSListController {
}
@end

@implementation panicLockiOS8PrefsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"panicLockiOS8Prefs" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
