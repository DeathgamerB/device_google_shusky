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
$(call inherit-product, device/google/shusky/aosp_shiba.mk)
$(call inherit-product, device/google/zuma/custom_common.mk)

include device/google/shusky/shiba/device-custom.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8
PRODUCT_NAME := custom_shiba

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=shiba \
    PRIVATE_BUILD_DESC="shiba-user 14 UQ1A.240205.004 11269751 release-keys"

BUILD_FINGERPRINT := google/shiba/shiba:14/UQ1A.240205.004/11269751:user/release-keys

$(call inherit-product, vendor/google/shiba/shiba-vendor.mk)
