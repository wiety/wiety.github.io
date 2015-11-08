ARCHS = armv7 arm64
GO_EASY_ON_ME = 1
TARGET = iphone:clang:latest:latest
THEOS_BUILD_DIR = debs
DEBUG=0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = vobec
vobec_FILES = Tweak.xm
vobec_CFLAGS = -fobjc-arc
vobec_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += vobecprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
