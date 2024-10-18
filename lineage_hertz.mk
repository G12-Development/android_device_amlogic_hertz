#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common AOSP stuff
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := DroidLogic
PRODUCT_DEVICE := hertz
PRODUCT_GMS_CLIENTID_BASE := android-askey-tv
PRODUCT_MANUFACTURER := DroidLogic
PRODUCT_MODEL := hertz
PRODUCT_NAME := lineage_hertz

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="adt3-user 11 RTT1.200909.003.A2 6832896 release-keys" \
    BuildFingerprint=ADT-3/adt3/adt3:11/RTT1.200909.003.A2/6832896:user/release-keys
