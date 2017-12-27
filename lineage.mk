# Copyright (C) 2017 The LineageOS Project
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


# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Kernel properties
TARGET_KERNEL_CONFIG := aosp_yukon_tianchi_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := D5303,tianchi

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/tianchi/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit LOS common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Fingerprint for tianchi (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5303
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D5303/D5303:5.1.1/19.4.A.0.182/2188515266:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D5303-user 5.1.1 19.4.A.C.0.182 2188515266 release-keys"

# Override Product Name for LineageOS
PRODUCT_NAME		:= lineage_tianchi
PRODUCT_DEVICE		:= tianchi
PRODUCT_MODEL		:= Xperia T2 Ultra
PRODUCT_BRAND		:= Sony
PRODUCT_MANUFACTURER	:= Sony
