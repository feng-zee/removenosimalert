THEOS_DEVICE_IP = YOUR_DEVICE_IP
THEOS_DEVICE_PORT = YOUR_PORT
ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = removenosimalert
removenosimalert_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += removenosimalert
include $(THEOS_MAKE_PATH)/aggregate.mk
