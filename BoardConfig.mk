#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Import the bcm21553-common BoardConfigCommon.mk
include device/samsung/bcm21553-common/BoardConfigCommon.mk

# Bluetooth
BOARD_HAVE_BLUETOOTH 				:= true 
BOARD_HAVE_BLUETOOTH_BCM 			:= true 
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR	:= device/samsung/amazing/bluetooth



# Board
TARGET_BOARD_PLATFORM				      := bcm21553
TARGET_BOOTLOADER_BOARD_NAME			:= amazing


#Asserts
TARGET_OTA_ASSERT_DEVICE  			:=amazing,GT-S6802

# Recovery
BOARD_BOOTIMAGE_PARTITION_SIZE			:= 7357568
BOARD_RECOVERYIMAGE_PARTITION_SIZE		:= 7357568
BOARD_SYSTEMIMAGE_PARTITION_SIZE		:= 241172480
BOARD_USERDATAIMAGE_PARTITION_SIZE		:= 206831616
BOARD_MDPI_RECOVERY				:= true
#TARGET_RECOVERY_FSTAB				:= device/samsung/bcm21553-common/ramdisk/fstab.bcm21553
TARGET_RECOVERY_LCD_BACKLIGHT_PATH		:= \"/sys/class/backlight/sec-backlight/brightness\"

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER			:= WEXT
WPA_SUPPLICANT_VERSION				:= VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB		:= lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE				:= bcm4330
BOARD_WLAN_DEVICE_REV				:= bcm4330_b1_totoro
WIFI_DRIVER_MODULE_PATH				:= "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_AP				:= "/system/etc/firmware/bcm4330_aps.bin"
WIFI_DRIVER_FW_PATH_STA				:= "/system/etc/firmware/bcm4330_sta.bin"
WIFI_DRIVER_FW_PATH_P2P				:= "/system/etc/firmware/bcm4330_aps.bin"
WIFI_DRIVER_MODULE_ARG				:= "firmware_path=/system/etc/firmware/bcm4330_sta.bin nvram_path=/system/etc/firmware/nvram.txt"
WIFI_DRIVER_MODULE_NAME				:= "bcmdhd"
WIFI_BAND                   			:= 802_11_ABG

# Wi-Fi Tethering
BOARD_HAVE_SAMSUNG_WIFI 			:= true
BOARD_LEGACY_NL80211_STA_EVENTS 		:= true
BOARD_NO_APSME_ATTR 				:= true

# Charger
#BOARD_CHARGER_ENABLE_SUSPEND := true
#BOARD_ALLOW_SUSPEND_IN_CHARGER := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
#BOARD_BATTERY_DEVICE_NAME := "battery"

# Healthd
BOARD_HAL_STATIC_LIBRARIES			:= libhealthd.bcm21553

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/amazing/ril/

# Audio
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DSAMSUNG_BCM_AUDIO_BLOB
BOARD_USE_SAMSUNG_SEPARATEDSTREAM := true
BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true
# Audio
BOARD_USES_ALSA_AUDIO := true

# OMX
BOARD_HAVE_CODEC_SUPPORT := SAMSUNG_CODEC_SUPPORT
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CODEC_SUPPORT
BOARD_NONBLOCK_MODE_PROCESS := true
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USES_MFC_FPS := true
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_CSC_FIMC := false

# FM Radio 
BOARD_HAVE_FM_RADIO := true 
BOARD_FM_DEVICE := bcm4330 
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO 

# Kernel
TARGET_KERNEL_CONFIG				:= cm_amazing_defconfig

# TWRP
TARGET_RECOVERY_FSTAB := device/samsung/amazing/ramdisk/twrp.fstab
DEVICE_RESOLUTION := 320x480
# RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EVENT_LOGGING := false
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_ALWAYS_RMRF := true
TW_FLASH_FROM_STORAGE := true
TW_NO_CPU_TEMP	:=false
TW_NO_BATT_PERCENT := true 
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/lm-2/gadget/lun0/file
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p9"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,noauto_da_alloc,journal_async_commit,errors=panic"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer" 


