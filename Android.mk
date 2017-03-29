####################################
# Build libevent as separate library

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE:= event
LOCAL_MODULE_TAGS:= optional

LOCAL_SRC_FILES := \
	arc4random.c \
    buffer.c \
    bufferevent.c \
    bufferevent_filter.c \
    bufferevent_openssl.c \
    bufferevent_pair.c \
    bufferevent_ratelim.c \
    bufferevent_sock.c \
    epoll.c \
    epoll_sub.c \
    evdns.c \
    event.c \
    event_tagging.c \
    evmap.c \
    evrpc.c \
    evthread.c \
    evthread_pthread.c \
    evutil.c \
    evutil_rand.c \
    http.c \
    listener.c \
    log.c \
    poll.c \
    select.c \
    signal.c \
    strlcpy.c

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/android \
    $(LOCAL_PATH)/include \
    $(DISTILLERY_ROOT_DIR)/usr/include

LOCAL_CFLAGS := -DHAVE_CONFIG_H -DANDROID -fvisibility=hidden

include $(BUILD_STATIC_LIBRARY)
