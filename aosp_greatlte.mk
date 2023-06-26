#
# Copyright (C) 2019 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from greatlte device
$(call inherit-product, device/samsung/greatlte/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

# Project-Elixir
IS_PHONE := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
ELIXIR_BUILD_TYPE := OFFICIAL
TARGET_USES_AOSP_RECOVERY := true
ELIXIR_MAINTAINER := PallavjParikh


# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := greatlte
PRODUCT_NAME := aosp_greatlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N950F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=greatltexx \
    PRIVATE_BUILD_DESC="greatltexx-user 8.0.0 R16NW N950FXXU3CRC1 release-keys"

BUILD_FINGERPRINT := samsung/greatltexx/greatlte:8.0.0/R16NW/N950FXXU3CRC1:user/release-keys
