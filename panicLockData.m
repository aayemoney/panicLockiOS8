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
// static NSString *testString;

+ (BOOL)isPanicLockActive {

	NSLog(@"ra86: panicLockData.m: accessed isPanicLockActive called. returns: %d", isPanicLockActive);
	return isPanicLockActive;

}

+ (void)flipPanicLockStatus {

	if (isPanicLockActive) {

		isPanicLockActive = false;
		NSLog(@"ra86: panicLockData.m: lena1. returns: %d", isPanicLockActive);

	}

	else {

		isPanicLockActive = true;
		NSLog(@"ra86: panicLockData.m: lena2. returns: %d", isPanicLockActive);

	}

	NSLog(@"ra86: call to panicLockData.m flipPanicLockStatus recieved. flipped %d to %d", !isPanicLockActive, isPanicLockActive);

}

@end
