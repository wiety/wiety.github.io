THEOS_PACKAGE_DIR_NAME = debs
ARCHS = armv7 arm64
TARGET =: clang:7.1:8.1

include theos/makefiles/common.mk

TWEAK_NAME = vobec
vobec_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += vobecprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
