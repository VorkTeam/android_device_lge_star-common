ifneq ($(filter p990 p999, $(TARGET_BOOTLOADER_BOARD_NAME)),)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS    := optional

LOCAL_SRC_FILES      := cameraHal.cpp

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH    := $(TARGET_OUT_SHARED_LIBRARIES)/hw

LOCAL_SHARED_LIBRARIES += \
    liblog \
    libutils \
    libbinder \
    libcutils \
    libmedia \
    libhardware \
    libcamera_client \
    libcamera

LOCAL_SHARED_LIBRARIES += libdl

LOCAL_MODULE         := camera.$(TARGET_BOARD_PLATFORM)

include $(BUILD_SHARED_LIBRARY)

endif
