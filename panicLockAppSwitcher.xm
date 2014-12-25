////////////////////////////////////////////////////////////////////////////////////////////
//
// panicLockPro by Ruslan Ardashev 
// ruslan.ardashev@duke.edu
// www.ruslanArdashev.com
// Copyright 2015
//
////////////////////////////////////////////////////////////////////////////////////////////

#include "../panicLockData.h"


%hook SBUIController

-(void)_toggleSwitcherForReals { 

	if ([panicLockData isPanicLockActive]) {

		// NSLog(@"ra86: _toggleSwitcherForReals swizzled.");

	}
	
	else {

		%orig; 
	
	}

}

-(void)_toggleSwitcher { 

	if ([panicLockData isPanicLockActive]) {

		// NSLog(@"ra86: _toggleSwitcher swizzled.");

	}
	
	else {

		%orig; 

	}

}

%end

