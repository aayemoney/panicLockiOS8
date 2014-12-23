include theos/makefiles/common.mk

BUNDLE_NAME = panicLockiOS8Prefs
panicLockiOS8Prefs_FILES = panicLockiOS8Prefs.mm
panicLockiOS8Prefs_INSTALL_PATH = /Library/PreferenceBundles
panicLockiOS8Prefs_FRAMEWORKS = UIKit
panicLockiOS8Prefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/panicLockiOS8Prefs.plist$(ECHO_END)
