# Copyright 2017 The Android Open Source Project
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

# Kernel config
TARGET_KERNEL_CONFIG := aosp_yukon_tianchi_defconfig

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/tianchi/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Product attributes
PRODUCT_NAME := aosp_tianchi
PRODUCT_DEVICE := tianchi
PRODUCT_MODEL := Xperia T2 Ultra
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

$(call inherit-product, device/sony/tianchi/device.mk)
$(call inherit-product-if-exists, vendor/sony/tianchi/tianchi-vendor.mk)

# Fingerprint for flamingo (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5503
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D5303/D5303:4.4.3/19.1.1.C.0.56/x393Zw:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D5303-user 4.4.3 19.1.1.C.0.56 x393Zw release-keys"

# Bootanimation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

