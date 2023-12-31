#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/citrus

# Include common platform configs
include device/xiaomi/sm6115-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := citrus

# Kernel - Prebuilt
#BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_citrus
TARGET_RECOVERY_DEVICE_MODULES := libinit_citrus

# Inherit from the proprietary version
include vendor/xiaomi/citrus/BoardConfigVendor.mk
