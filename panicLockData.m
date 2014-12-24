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

	// Flip Status
	if (isPanicLockActive) {

		isPanicLockActive = false;

	}

	else {

		isPanicLockActive = true;

	}

	// Write this status to disk. Done so that a malicious user can't 
	// bypass panicLock simply by restarting the device
	[panicLockData saveStatusToDisk:isPanicLockActive];

}

+ (void)saveStatusToDisk:(BOOL)statusToSave {

	NSMutableDictionary *prefs = [panicLockData getPrefsDictionary];

	// isEnabled_NSNumber = [NSNumber numberWithBool:isEnabled];

}

+ (NSMutableDictionary *)getPrefsDictionary {

	NSMutableDictionary *returnDictionary;

	returnDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:FILE_PATH];

	// Handle Initializing Case
	if (returnDictionary == nil) {

		[panicLockData displayWelcomeMessage];

	}

	return returnDictionary;

}

+ (void)displayWelcomeMessage {

	UIAlertView *alert = [UIAlertView alloc] initWithTitle:@"Welcome to panicLock for iOS 8"
							  					   message:@"Preference file created. panicLock will now remember lock status between reboots for security purposes."
							 					  delegate:nil
				 						 cancelButtonTitle:@"Got it, thanks!"
				 						 otherButtonTitles:nil];

}

@end















