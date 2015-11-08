
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = vobecprefs
vobecprefs_FILES = vobecprefs.m
vobecprefs_INSTALL_PATH = /Library/PreferenceBundles
vobecprefs_FRAMEWORKS = UIKit
vobecprefs_PRIVATE_FRAMEWORKS = Preferences
DEBUG=0

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/vobecprefs.plist$(ECHO_END)
