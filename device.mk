#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_HARDWARE := citrus

# Inherit from sm6115-common
$(call inherit-product, device/xiaomi/sm6115-common/common.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays
PRODUCT_PACKAGES += \
    CarrierConfigOverlay \
    FrameworksCustomCitrus \
    FrameworksResCitrus \
    SettingsResCitrus \
    SystemUIResCitrus \
    TelephonyResCitrus
    
# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/citrus/citrus-vendor.mk)
