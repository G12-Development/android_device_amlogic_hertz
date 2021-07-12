#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_HAS_TEE := false

# Inherit some common AOSP stuff
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := bananapi
PRODUCT_DEVICE := m5
PRODUCT_GMS_CLIENTID_BASE := android-askey-tv
PRODUCT_MANUFACTURER := bananapi
PRODUCT_MODEL := BPI-M5
PRODUCT_NAME := lineage_m5

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=adt3 \
    PRIVATE_BUILD_DESC="adt3-user 11 RTT1.200909.003.A2 6832896 release-keys"

BUILD_FINGERPRINT := ADT-3/adt3/adt3:11/RTT1.200909.003.A2/6832896:user/release-keys
