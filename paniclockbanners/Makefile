export ARCHS = armv7 armv7s arm64
export TARGET = iphone:clang:8.1:8.1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = panicLockBanners
panicLockBanners_FILES = Tweak.xm
panicLockBanners_FRAMEWORKS = UIKit Foundation
panicLockBanners_LIBRARIES = applist activator

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
