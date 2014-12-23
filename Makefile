export ARCHS = armv7 armv7s arm64
export TARGET = iphone:clang:7.1:7.1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = panicLock iOS8
panicLockiOS8_FRAMEWORKS = UIKit Foundation
panicLockiOS8_FILES = Tweak.xm
panicLockiOS8_LIBRARIES = applist activator

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += paniclockapps
SUBPROJECTS += paniclockbanners
SUBPROJECTS += paniclockappswitcher
SUBPROJECTS += paniclockios8prefs
include $(THEOS_MAKE_PATH)/aggregate.mk
