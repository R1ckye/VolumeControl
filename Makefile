include theos/makefiles/common.mk

TOOL_NAME = volume
volume_FILES = main.m
volume_FRAMEWORKS = MediaPlayer
volume_PRIVATE_FRAMEWORKS = Celestial

include $(THEOS_MAKE_PATH)/tool.mk
