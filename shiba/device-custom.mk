#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PACKAGE_OVERLAYS += device/google/shusky/shiba/overlay-custom

TARGET_VENDOR_PROP += device/google/shusky/shiba/vendor.prop

$(call inherit-product, device/google/shusky/device-custom.mk)
