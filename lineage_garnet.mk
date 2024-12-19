#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common MistOS stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

# Build stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_EXCLUDES_AUDIOFX := true
WITH_GMS := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false
TARGET_DEFAULT_PIXEL_LAUNCHER := false
MISTOS_MAINTAINER=JYR_RC
MIST_BUILD_TYPE := OFFICIAL
TARGET_ENABLE_BLUR := true

PRODUCT_NAME := lineage_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2312DRA50G

PRODUCT_SYSTEM_NAME := garnet_global
PRODUCT_SYSTEM_DEVICE := garnet

#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRIVATE_BUILD_DESC="garnet_global-user 14 UKQ1.231003.002 V816.0.17.0.UNRMIXM release-keys" \
#    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
#    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Redmi/garnet_global/garnet:14/UKQ1.231003.002/V816.0.17.0.UNRMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
