#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Apollo OS stuff.
$(call inherit-product, vendor/apollo/config/common_full_phone.mk)

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

# Build stuff
TARGET_DISABLE_EPPE := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_ADAPTIVE_CHARGING := true
TARGET_FACE_UNLOCK_OPTOUT := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := apollo_marble

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Gapps
WITH_GAPPS := true