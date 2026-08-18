#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/halcyon/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/bramble/aosp_bramble.mk)
$(call inherit-product, device/google/redbull/lineage_common.mk)

include device/google/bramble/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a (5G)
PRODUCT_NAME := halcyon_bramble

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Bit seasoning
PRODUCT_NO_CAMERA := true
WITH_GMS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bramble-user 14 UP1A.231105.001.B2 11260668 release-keys" \
    BuildFingerprint=google/bramble/bramble:14/UP1A.231105.001.B2/11260668:user/release-keys \
    DeviceProduct=bramble

$(call inherit-product, vendor/google/bramble/bramble-vendor.mk)
