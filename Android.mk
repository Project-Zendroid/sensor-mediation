ifeq ($(USE_SENSOR_MEDIATION_HAL), true)
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := sensors.$(TARGET_BOARD_PLATFORM)

LOCAL_PROPRIETARY_MODULE := true

LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_CFLAGS := -DLOG_TAG=\"SensorsHal\" -Wall
ifeq ($(MEDIATION_HAL_DISABLE_STATIC_SENSOR_LIST), true)
LOCAL_CFLAGS += -DDISABLE_STATIC_SENSOR_LIST
endif

LOCAL_SRC_FILES := sensor_hal.cpp iio-client.cpp
LOCAL_STATIC_LIBRARIES := intel.sensors.libiio

LOCAL_SHARED_LIBRARIES := liblog libc libdl libxml2 libcutils
LOCAL_HEADER_LIBRARIES += libutils_headers libhardware_headers

LOCAL_CFLAGS += -Wno-unused-variable -Wno-unused-parameter -Wno-unused-function

LOCAL_C_INCLUDES := $(LOCAL_PATH)

include $(BUILD_SHARED_LIBRARY)

endif
