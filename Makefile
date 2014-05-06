#HOST=raspberrypi

CPP_MODS=../cpp-mods
#GRAPPIX=..
include $(CPP_MODS)/config.mk

OBJDIR := obj/
TARGET := demo
CFLAGS += -Wall -g -O2 -DMUSIC

include $(CPP_MODS)/musicplayer/plugins/ModPlugin/module.mk
include $(CPP_MODS)/coreutils/module.mk
include $(CPP_MODS)/audioplayer/module.mk
include $(CPP_MODS)/grappix/module.mk

#CC = clang
#CXX = clang++

DATA_FILES += data/ObelixPro.ttf data/stardust.mod

ANDROID_PROJECT := android

LOCAL_FILES := demo.cpp MusicPlayer.cpp

CFLAGS += -DMODPLUG_BASIC_SUPPORT

include $(CPP_MODS)/build.mk
