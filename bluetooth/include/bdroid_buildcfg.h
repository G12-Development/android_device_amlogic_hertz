/*
* Copyright (C) 2021 The LineageOS Project
*
* SPDX-License-Identifier: Apache-2.0
*/

#ifndef _BDROID_BUILDCFG_H
#define _BDROID_BUILDCFG_H

#define BTM_DEF_LOCAL_NAME "Hertz"

#define BLE_VND_INCLUDED TRUE

#define BTA_DM_COD {0x20, BTM_COD_MAJOR_AUDIO, BTM_COD_MINOR_SET_TOP_BOX}

#define BTM_BLE_CONN_INT_MIN_DEF     0x18
#define BTM_BLE_CONN_INT_MAX_DEF     0x28
#define BTM_BLE_CONN_TIMEOUT_DEF     200
/* minimum acceptable connection interval */
#define BTM_BLE_CONN_INT_MIN_LIMIT 0x0006  /*7.5ms=6*1.25*/

#define BTM_BLE_SCAN_SLOW_INT_1 512

/*fix r311&r321 bt not open*/
#define KERNEL_MISSING_CLOCK_BOOTTIME_ALARM TRUE

#endif
