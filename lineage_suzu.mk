#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from suzu device
$(call inherit-product, device/sony/suzu/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Device identifications
PRODUCT_NAME := lineage_suzu
PRODUCT_DEVICE := suzu
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia X
PRODUCT_MANUFACTURER := Sony

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="F5122-user 8.0.0 34.4.A.0.364 2371171945 release-keys"

BUILD_FINGERPRINT := Sony/F5122/F5122:8.0.0/34.4.A.0.364/2371171945:user/release-keys
