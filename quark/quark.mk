# Copyright (C) 2016 ParanoidAndroid Project
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
# This folder needs to me moved before compiling, My move command:
# mv /home/nepo/chikara/vendor/chikara/products/quark

# Check for target product

ifeq (chikara_quark,$(TARGET_PRODUCT))

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Include AOSPA common configuration
TARGET_BOOT_ANIMATION_RES := 1440
include vendor/chikara/main.mk

# Inherit device configuration
$(call inherit-product, device/motorola/quark/full_quark.mk)

# Enhanced NFC
# $(call inherit-product, vendor/aicp/configs/nfc_enhanced.mk)

# Overlay
# DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := chikara_quark
PRODUCT_DEVICE := quark
PRODUCT_MODEL := quark
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="quark" \
    PRODUCT_NAME="quark" \
    BUILD_DISPLAY_ID='quark-userdebug $(PLATFORM_VERSION) $(BUILD_ID) $(BUILD_NUMBER) test-keys' \
    TARGET_BUILD_FLAVOR=quark-userdebug
