#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common loire-common
include device/sony/loire-common/BoardConfigCommon.mk

DEVICE_PATH := device/sony/suzu

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel — PREBUILT (PLAN-PORT-LOS23 v2 P0.2): dùng kernel 4.9 build bằng
# Docker GCC đã chứng minh chạy thật trên máy; bỏ qua build kernel trong cây
# LOS 23.2 (triệt tiêu rủi ro toolchain clang với kernel 4.9).
# Khi muốn build in-tree: comment 2 dòng dưới + bỏ comment TARGET_KERNEL_* ở loire-common.
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
# TARGET_KERNEL_SOURCE := kernel/sony/msm8956
# TARGET_KERNEL_CONFIG := vendor/sony/loire_defconfig
TARGET_KERNEL_CONFIG += vendor/sony/suzu.config

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 7843348480
BOARD_USERDATAIMAGE_PARTITION_SIZE := 22225600512

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/sony/suzu/BoardConfigVendor.mk
