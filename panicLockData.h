@interface panicLockData : NSObject
+ (BOOL)isPanicLockActive;
+ (void)flipPanicLockStatus;
@end