#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from RMX3461 device
$(call inherit-product, device/realme/RMX3461/device.mk)

PRODUCT_DEVICE := RMX3461
PRODUCT_NAME := omni_RMX3461
PRODUCT_BRAND := realme
PRODUCT_MODEL := REALME_RMX3461
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_RMX3461-eng 99.87.36 SP2A.220405.004 eng.runner.20230323.202758 test-keys"

BUILD_FINGERPRINT := realme/twrp_RMX3461/RMX3461:99.87.36/SP2A.220405.004/runner03232009:eng/test-keys
