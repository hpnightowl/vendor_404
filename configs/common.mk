#
# Copyright (C) 2022 Project 404
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

# Inherit from common Qualcomm device
$(call inherit-product, device/qcom/common/common.mk)

# Include definitions for Snapdragon Clang
$(call inherit-product, vendor/404/sdclang/sdclang.mk)

# Inherit version definations
$(call inherit-product, vendor/404/configs/version.mk)

# Include packages makefile
$(call inherit-product, vendor/404/configs/packages.mk)

# Include properties makefile
$(call inherit-product, vendor/404/configs/properties.mk)

# Disable EAP Proxy because it depends on proprietary headers
# and breaks WPA Supplicant compilation.
DISABLE_EAP_PROXY := true

# Move Wi-Fi modules to vendor
PRODUCT_VENDOR_MOVE_ENABLED := true

# Filesystem
TARGET_FS_CONFIG_GEN += vendor/404/configs/config.fs

# Permissions
PRODUCT_COPY_FILES += \
    vendor/404/configs/permissions/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    vendor/404/configs/permissions/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml \
    vendor/404/configs/permissions/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml
