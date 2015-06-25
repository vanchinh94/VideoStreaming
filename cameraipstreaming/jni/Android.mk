
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libx264
LOCAL_SRC_FILES := libx264.a

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libavformat
LOCAL_SRC_FILES := libavformat.a

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libavcodec
LOCAL_SRC_FILES := libavcodec.a

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libavutil
LOCAL_SRC_FILES := libavutil.a

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libswscale
LOCAL_SRC_FILES := libswscale.a

include $(PREBUILT_STATIC_LIBRARY)
include $(CLEAR_VARS)
LOCAL_MODULE    := ffmpeg-jni
LOCAL_SRC_FILES := ffmpeg-jni.c
LOCAL_C_INCLUDES := $(LOCAL_PATH)/ffmpeg
LOCAL_LDLIBS := -lz -llog
LOCAL_STATIC_LIBRARIES := libavformat libavcodec libswscale libavutil libx264
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := avjni
LOCAL_SRC_FILES := avjni.c
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_LDLIBS :=-L$(LOCAL_PATH)/include -lavformat -lavcodec -lavcore -lavdevice -lavfilter -lavutil -lswscale
LOCAL_LDLIBS += -llog -ljnigraphics -lz -ldl -lgcc
include $(BUILD_SHARED_LIBRARY)
include $(CLEAR_VARS)
include /home/kiem/wsancode/webcamstream/jni/OpenCV-2.3.1/share/OpenCV/OpenCV.mk

LOCAL_MODULE    :=opencv
LOCAL_SRC_FILES := jni_part.cpp
LOCAL_LDLIBS := -L$(NDK_PLATFORMS_ROOT)/$(TARGET_PLATFORM)/arch-arm/usr/lib -L$(LOCAL_PATH)
LOCAL_LDLIBS +=  -llog -ldl -ljnigraphics -lcurl

LOCAL_LDLIBS +=-lcurl
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)

LOCAL_MODULE    := ImageProc
LOCAL_SRC_FILES := ImageProc.c
LOCAL_LDLIBS    := -llog -ljnigraphics

include $(BUILD_SHARED_LIBRARY)



