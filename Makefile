export ARCHS = armv7 armv7s arm64
export TARGET = iphone:clang:8.1:8.1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = panicLockiOS8
panicLockiOS8_FRAMEWORKS = UIKit Foundation
panicLockiOS8_FILES = Tweak.xm panicLockData.m panicLockiOS8Listener.m panicLockApps.xm panicLockAppSwitcher.xm panicLockBanners.xm panicLockNotificationCenter.xm panicLockControlCenter.xm
panicLockiOS8_LIBRARIES = applist activator

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += paniclockios8prefs
include $(THEOS_MAKE_PATH)/aggregate.mk

