#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spartan device
$(call inherit-product, device/realme/spartan/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# UDFPS support 
TARGET_HAS_UDFPS := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Blur
TARGET_ENABLE_BLUR := true

# Lawnchair (Pixel launcher by default)
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Custom package installer
TARGET_USE_CUSTOM_PACKAGE_INSTALLER := true

# Live wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Quick tap
TARGET_SUPPORTS_QUICK_TAP  := true

# Call Recording Support
TARGET_SUPPORTS_CALL_RECORDING := true

# GMS
WITH_GMS := true

# Orion OS Flags
ORION_MAINTAINER="Rahul"
ORION_MAINTAINER_LINK := "https://t.me/Evilmove"
ORION_BUILD_TYPE := UNOFFICIAL
ORION_GAPPS := true

PRODUCT_NAME := orion_spartan
PRODUCT_DEVICE := spartan
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3371

PRODUCT_SYSTEM_NAME := RMX3371
PRODUCT_SYSTEM_DEVICE := RE54E4L1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3371-user 14 UKQ1.230924.001 1725460632695 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3371/RE54E4L1:14/UKQ1.230924.001/1725460632695:user/release-keys

