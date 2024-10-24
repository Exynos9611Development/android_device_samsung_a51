#
# Copyright (C) 2023 The LineageOS Project
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
# FOD animations
EXTRA_UDFPS_ANIMATIONS := true
# FOD
TARGET_HAS_UDFPS := true
# NFC
TARGET_USES_NXP_NFC := true

# Inherit device configuration
$(call inherit-product, device/samsung/a51/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Client-id base
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

# Build fingerprint
BUILD_FINGERPRINT := "samsung/a51nsxx/a51:13/TP1A.220624.014/A515FXXU5GVK6:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
	BuildDesc=$(call normalize-path-list, "a51nsxx-user 13 TP1A.220624.014 A515FXXU5GVK6 release-keys")

## Device configuration
PRODUCT_NAME := lineage_a51
PRODUCT_DEVICE := a51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A515F
PRODUCT_MANUFACTURER := samsung

TARGET_BOOT_ANIMATION_RES := 1080
