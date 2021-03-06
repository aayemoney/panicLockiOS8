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
-(void) sendEmail {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto:ruslan.ardashev@duke.edu?subject=panicLockPro"]];
}

-(void) openInstructions {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/watch?v=QFnOcuC28XQ"]];
}

-(void) openDemo {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/watch?v=JYyvcY6P_I8"]];
}

-(void) openYoutubeChannel {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/user/Ruslan120101"]];
}

@end

// vim:ft=objc

