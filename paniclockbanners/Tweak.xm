////////////////////////////////////////////////////////////////////////////////////////////
//
// panicLockPro by Ruslan Ardashev 
// ruslan.ardashev@duke.edu
// www.ruslanArdashev.com
// Copyright 2014
//
////////////////////////////////////////////////////////////////////////////////////////////

#import <libactivator/libactivator.h>
#include "../panicLockData.h"

#define FILE_PATH @"/var/mobile/Library/Preferences/com.ruslan.paniclockproios8prefs.plist"

@interface panicLockiOS8BannersListener : NSObject <LAListener>
@end
 

@implementation panicLockiOS8BannersListener
 
+ (void)load {

	if ([LASharedActivator isRunningInsideSpringBoard]) {
		[LASharedActivator registerListener:[self new] forName:@"com.ruslan.paniclockproios8"];
	}

}

- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event
{

	if (YES) NSLog(@"ra86 tweak banners detected activator action.");
 
	[event setHandled:YES]; // To prevent the default OS implementation

	return;
}
 
- (void)activator:(LAActivator *)activator abortEvent:(LAEvent *)event {
		
	if (YES) NSLog(@"activatorAbortEvent called.");

	// Dismiss your plugin

}

@end

/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor.

%hook ClassName

// Hooking a class method
+ (id)sharedInstance {
	return %orig;
}

// Hooking an instance method with an argument.
- (void)messageName:(int)argument {
	%log; // Write a message about this call, including its class, name and arguments, to the system log.

	%orig; // Call through to the original function with its original arguments.
	%orig(nil); // Call through to the original function with a custom argument.

	// If you use %orig(), you MUST supply all arguments (except for self and _cmd, the automatically generated ones.)
}

// Hooking an instance method with no arguments.
- (id)noArguments {
	%log;
	id awesome = %orig;
	[awesome doSomethingElse];

	return awesome;
}

// Always make sure you clean up after yourself; Not doing so could have grave consequences!
%end
*/
