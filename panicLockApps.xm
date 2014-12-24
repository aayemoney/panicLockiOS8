////////////////////////////////////////////////////////////////////////////////////////////
//
// panicLockPro by Ruslan Ardashev 
// ruslan.ardashev@duke.edu
// www.ruslanArdashev.com
// Copyright 2015
//
////////////////////////////////////////////////////////////////////////////////////////////

#include "../panicLockData.h"

%hook SBApplicationIcon

- (void)launchFromLocation:(int)arg1 {

	BOOL panicLockActive = [panicLockData isPanicLockActive];
	NSLog(@"ra86: apps tweak file got: %d", panicLockActive);

	if (panicLockActive) {

		return;

	}

	else {

		%orig;
		
	}

}

%end

