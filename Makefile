THEOS_DEVICE_IP = 127.0.0.1
THEOS_DEVICE_PORT = 2222

TARGET := iphone:clang:latest:11.0
DEBUG = 0
ARCHS = arm64
INSTALL_TARGET_PROCESSES = OKEx


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = OKXBypassJailbreak

OKXBypassJailbreak_FILES = Tweak.x
OKXBypassJailbreak_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
