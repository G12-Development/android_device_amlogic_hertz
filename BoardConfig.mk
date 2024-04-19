#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amlogic/hertz

## Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
BOARD_CUSTOM_BT_CONFIG := $(DEVICE_PATH)/bluetooth/vnd_amlogic_lpm.txt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hertz

## DTB
TARGET_DTB_NAME := hertz_3g

# GPU
TARGET_AMLOGIC_GPU_ARCH := midgard

# Kernel
BOARD_KERNEL_CMDLINE += --cmdline "root=/dev/mmcblk0p18"

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# SOC
TARGET_AMLOGIC_SOC := gxm
TARGET_BOARD_PLATFORM := gxm

## Wi-Fi
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_AP := "/vendor/etc/wifi/6255/fw_bcm43455c0_ag.bin"
WIFI_DRIVER_FW_PATH_STA := "vendor/etc/wifi/6255/fw_bcm43455c0_ag_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true

## Include the common tree BoardConfig makefile
include device/amlogic/gx-common/BoardConfigCommon.mk

include vendor/amlogic/hertz/BoardConfigVendor.mk
