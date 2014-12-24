////////////////////////////////////////////////////////////////////////////////////////////
//
// panicLockPro by Ruslan Ardashev 
// ruslan.ardashev@duke.edu
// www.ruslanArdashev.com
// Copyright 2015
//
////////////////////////////////////////////////////////////////////////////////////////////

#import "panicLockiOS8Listener.h"

@implementation panicLockiOS8Listener
 
+ (void)load {

	if ([LASharedActivator isRunningInsideSpringBoard]) {
		[LASharedActivator registerListener:[self new] forName:@"com.ruslan.paniclockproios8"];
	}

}

- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {

	if (YES) NSLog(@"ra86 tweak root detected activator action.");
 
	[panicLockData flipPanicLockStatus];

	[event setHandled:YES]; // To prevent the default OS implementation

}
 
- (void)activator:(LAActivator *)activator abortEvent:(LAEvent *)event {
		
	if (YES) NSLog(@"activatorAbortEvent called.");

	// Dismiss your plugin

}

@end
