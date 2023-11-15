#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common SerasaOS stuff
$(call inherit-product, vendor/serasa/config/common_full_phone.mk)

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Target from device
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_CHARGER := true
WITH_GAPPS := true

# Device Identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := serasa_lavender
PRODUCT_MODEL := Redmi Note 7

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lavender-user 10 QKQ1.190910.002 V12.5.3.0.QFGMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/lavender/lavender:10/QKQ1.190910.002/V12.5.3.0.QFGMIXM:user/release-keys
