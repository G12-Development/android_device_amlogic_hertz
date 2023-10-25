#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Factory
PRODUCT_HOST_PACKAGES += \
    aml_image_packer

## Bluetooth
BOARD_HAVE_BLUETOOTH := true
PRODUCT_PACKAGES += \
    HertzBluetoothOverlay \
    libbt-vendor

## Init-Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

## Kernel Modules
TARGET_DHD_VERSION := bcmdhd.100.10.545.x

PRODUCT_PACKAGES += \
    dhd

# Platform
TARGET_AMLOGIC_SOC := gxm

## Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

## TEE
TARGET_HAS_TEE := false

$(call inherit-product, device/amlogic/gx-common/gx.mk)
$(call inherit-product, vendor/amlogic/hertz/hertz-vendor.mk)
