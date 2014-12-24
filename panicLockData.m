////////////////////////////////////////////////////////////////////////////////////////////
//
// panicLockPro by Ruslan Ardashev 
// ruslan.ardashev@duke.edu
// www.ruslanArdashev.com
// Copyright 2015
//
////////////////////////////////////////////////////////////////////////////////////////////

#import "panicLockData.h"

#define FILE_PATH @"/var/mobile/Library/Preferences/com.ruslan.paniclockproios8prefs.plist"


@implementation panicLockData

static BOOL isPanicLockActive;
static NSLock *accessLock;

+ (BOOL)isPanicLockActive {

	[panicLockData ensureLockAlloc];
	return isPanicLockActive;

}

+ (void)flipPanicLockStatus {

	[panicLockData ensureLockAlloc];

}

+ (void)ensureLockAlloc {

	if (accessLock == nil) {

		accessLock = [[NSLock alloc] init];

	}

}

@end

