#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_NAME := omni_c7prolte
PRODUCT_DEVICE := c7prolte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-C701F
PRODUCT_MANUFACTURER := samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=c7proltedd \
    BUILD_FINGERPRINT=samsung/c7proltedd/c7prolte:6.0.1/MMB29M/C701FDDU1AQE3:user/release-keys \
    PRIVATE_BUILD_DESC="c7proltedd-user 6.0.1 MMB29M C701FDDU1AQE3 release-keys"


# DTB Work-Around
PRODUCT_COPY_FILES += \
    device/samsung/c7prolte/dt.img:dt.img
