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
PRODUCT_MANUFACTURER := bananapi
PRODUCT_MODEL := BPI-M5
PRODUCT_NAME := lineage_m5
