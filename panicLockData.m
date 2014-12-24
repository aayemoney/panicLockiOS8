////////////////////////////////////////////////////////////////////////////////////////////
//
// panicLockPro by Ruslan Ardashev 
// ruslan.ardashev@duke.edu
// www.ruslanArdashev.com
// Copyright 2015
//
////////////////////////////////////////////////////////////////////////////////////////////

#import "panicLockData.h"

#define FILE_PATH @"/var/mobile/Library/Preferences/com.ruslan.panicLockiOS8Prefs.plist"


@implementation panicLockData

static BOOL isPanicLockActive;

+ (BOOL)isPanicLockActive {

	return isPanicLockActive;

}

+ (void)flipPanicLockStatus {

	if (isPanicLockActive) {

		isPanicLockActive = false;

	}

	else {

		isPanicLockActive = true;

	}

}

@end
