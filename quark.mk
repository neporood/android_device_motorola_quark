# This file needs to me moved before compiling
# My move command:
# mv /home/nepo/aicp/vendor/aicp/products/quark.mk

$(call inherit-product, device/motorola/quark/full_quark.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Enhanced NFC
$(call inherit-product, vendor/aicp/configs/nfc_enhanced.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_RELEASE_NAME := DROID Turbo
PRODUCT_NAME := aicp_quark
PRODUCT_DEVICE := quark

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID='quark-userdebug $(PLATFORM_VERSION) $(BUILD_ID) $(BUILD_NUMBER) test-keys' \
    TARGET_BUILD_FLAVOR=quark-userdebug
