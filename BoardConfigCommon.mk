#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/noblelte-common

BOARD_VENDOR := samsung

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53.a57

# Binder
TARGET_USES_64_BIT_BINDER := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_CUSTOM_BT_CONFIG := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal7420
TARGET_NO_BOOTLOADER := true

# Charger
BACKLIGHT_PATH := /sys/devices/13900000.dsim/backlight/panel/brightness
BOARD_BATTERY_DEVICE_NAME := battery
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true

# Camera-shims
TARGET_LD_SHIM_LIBS += \
	/system/lib/libexynoscamera.so|/vendor/lib/libexynoscamera_shim.so \
	/system/lib64/libexynoscamera.so|/vendor/lib64/libexynoscamera_shim.so

# Audio HAL variant
TARGET_AUDIOHAL_VARIANT := samsung

# Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# ION
TARGET_USES_ION := true

#
# Samsung LSI Graphics
#

# Buffers
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true

# GScaler
BOARD_USES_SCALER := true

# GPS-shims
TARGET_LD_SHIM_LIBS += \
	/system/bin/gpsd|/vendor/lib64/gpsd_shim.so

# Hardware
BOARD_HARDWARE_CLASS += hardware/samsung/lineagehw
BOARD_HARDWARE_CLASS += device/samsung/noblelte-common/lineagehw

# HWCServices
BOARD_USES_HWC_SERVICES := true

# Renderscript
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a53
BOARD_OVERRIDE_RS_CPU_VARIANT_64 := cortex-a57

# HDMI
BOARD_HDMI_INCAPABLE := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
BOARD_KERNEL_BASE := 0x10000000
# BOARD_KERNEL_CMDLINE := commandline from boot.img by bootloader
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x10008000 --ramdisk_offset 0x11000000 --tags_offset 0x10000100
TARGET_KERNEL_SOURCE := kernel/samsung/noblelte
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
TARGET_LINUX_KERNEL_VERSION := 3.10
# BOARD_KERNEL_SEPARATED_DT := true
# TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Manifest
DEVICE_MANIFEST_FILE += device/samsung/noblelte-common/manifest.xml

# NFC
BOARD_NFC_HAL_SUFFIX := universal7420

# Metadata
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_STOREMETADATA := true

# Others
BOARD_USE_CSC_HW := false
BOARD_USE_DMA_BUF := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := false
BOARD_USES_GSC_VIDEO := true
BOARD_USES_VIRTUAL_DISPLAY := true

# Samsung LSI OpenMAX
BOARD_USE_VP8ENC_SUPPORT := true
BOARD_USE_HEVCDEC_SUPPORT := true
BOARD_USE_HEVC_HWIP := false
COMMON_GLOBAL_CFLAGS += -DUSE_NATIVE_SEC_NV12TILED

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_FLASH_BLOCK_SIZE := 131072

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_SOC := exynos7420
TARGET_SLSI_VARIANT := cm

# PowerHAL
TARGET_POWERHAL_VARIANT := samsung

# Radio
BOARD_PROVIDES_LIBRIL := true
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.samsungexynos7420
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_DOWNLOAD_MODE := true

# Releasetools - for resizing system filesystem
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/noblelte-common/releasetools

# OpenMAX-shims
TARGET_LD_SHIM_LIBS += \
	/system/lib/omx/libOMX.Exynos.AVC.Decoder.so|/vendor/lib/libui_shim.so \
	/system/lib64/omx/libOMX.Exynos.AVC.Decoder.so|/vendor/lib64/libui_shim.so \
	/system/lib/omx/libOMX.Exynos.AVC.Encoder.so|/vendor/lib/libui_shim.so \
	/system/lib64/omx/libOMX.Exynos.AVC.Encoder.so|/vendor/lib64/libui_shim.so \
	/system/lib/omx/libOMX.Exynos.HEVC.Decoder.so|/vendor/lib/libui_shim.so \
	/system/lib64/omx/libOMX.Exynos.HEVC.Decoder.so|/vendor/lib64/libui_shim.so \
	/system/lib/omx/libOMX.Exynos.HEVC.Encoder.so|/vendor/lib/libui_shim.so \
	/system/lib64/omx/libOMX.Exynos.HEVC.Encoder.so|/vendor/lib64/libui_shim.so \
	/system/lib/omx/libOMX.Exynos.MPEG4.Decoder.so|/vendor/lib/libui_shim.so \
	/system/lib64/omx/libOMX.Exynos.MPEG4.Decoder.so|/vendor/lib64/libui_shim.so \
	/system/lib/omx/libOMX.Exynos.MPEG4.Encoder.so|/vendor/lib/libui_shim.so \
	/system/lib64/omx/libOMX.Exynos.MPEG4.Encoder.so|/vendor/lib64/libui_shim.so \
	/system/lib/omx/libOMX.Exynos.VP8.Decoder.so|/vendor/lib/libui_shim.so \
	/system/lib64/omx/libOMX.Exynos.VP8.Decoder.so|/vendor/lib64/libui_shim.so \
	/system/lib/omx/libOMX.Exynos.VP8.Encoder.so|/vendor/lib/libui_shim.so \
	/system/lib64/omx/libOMX.Exynos.VP8.Encoder.so|/vendor/lib64/libui_shim.so \
	/system/lib/omx/libOMX.Exynos.VP9.Decoder.so|/vendor/lib/libui_shim.so \
	/system/lib64/omx/libOMX.Exynos.VP9.Decoder.so|/vendor/lib64/libui_shim.so \
	/system/lib/omx/libOMX.Exynos.WMV.Decoder.so|/vendor/lib/libui_shim.so \
	/system/lib64/omx/libOMX.Exynos.WMV.Decoder.so|/vendor/lib64/libui_shim.so

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true
TARGET_SEC_FP_HAL_VARIANT := bauth

# Fingerprint-shims
TARGET_LD_SHIM_LIBS += \
       /system/lib64/libbauthserver.so|/system/lib64/libbauthserver_shim.so

# Seccomp filters
BOARD_SECCOMP_POLICY += device/samsung/noblelte-common/seccomp

# Sepolicy
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy

# TWRP
ifneq ($(strip $(wildcard $(TOP)/bootable/recovery/variables.h)),)
-include device/samsung/noblelte-common/twrp.mk
endif

# Bootanimation Dimensions
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536

# WFD
BOARD_USES_WFD := true

# Wifi
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_USE_HIDL          := true
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG

# Workaround for non-working incall/callspeaker-mic
RIL_SET_CALL_CLOCK_SYNC_WORKAROUND := true
RIL_SET_TWO_MIC_CONTROL_WORKAROUND := true

# inherit from the proprietary version
-include vendor/samsung/noblelte-common/BoardConfigVendor.mk

