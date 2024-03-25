#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common PixelOS stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_8 := true
TARGET_PIXEL_STAND_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_husky.mk)
$(call inherit-product, device/google/zuma/custom_common.mk)

include device/google/shusky/husky/device-custom.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := custom_husky

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 UQ1A.240205.004 11269751 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/UQ1A.240205.004/11269751:user/release-keys

$(call inherit-product, vendor/google/husky/husky-vendor.mk)
