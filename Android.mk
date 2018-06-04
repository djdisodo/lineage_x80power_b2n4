LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),x80power_b2n4)

include $(call all-makefiles-under,$(LOCAL_PATH))
endif