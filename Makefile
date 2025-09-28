export ARCHS = arm64 arm64e
export TARGET = iphone:clang:latest:14.0

INSTALL_TARGET_PROCESSES = SpringBoard Preferences

TWEAK_NAME = REPLACE_THIS_TWEAKNAME
$(TWEAK_NAME)_FILES = $(wildcard src/*.xm src/*.m)
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

SUBPROJECTS += Preferences

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
include $(THEOS_MAKE_PATH)/tweak.mk

before-all::
	python3 codegen.py
