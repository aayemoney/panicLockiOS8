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