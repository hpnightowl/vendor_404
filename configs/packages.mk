#
# Copyright (C) 2020-2021 Project 404
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

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

# Include support for additional filesystems
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    7z \
    bash \
    bzip2 \
    curl \
    lib7z \
    powertop \
    pigz \
    tinymix \
    unrar \
    unzip \
    vim \
    rsync \
    zip

# 404 Packages
PRODUCT_PACKAGES += \
    P404Launcher \
    Covers \
    ThemePicker \
    AbleMusic \
    Updater \
    Camera \
    RepainterServicePriv

# 2019 Material product sounds (CC-BY 4.0)
# Source: https://material.io/design/sound/sound-resources.html
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/404/sounds/material/,$(TARGET_COPY_OUT_PRODUCT)/media/audio)

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# Framework detect libs
PRODUCT_PACKAGES += \
    libvndfwk_detect_jni.qti \
    libqti_vndfwk_detect \
    libvndfwk_detect_jni.qti.vendor \
    libqti_vndfwk_detect.vendor

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0.vendor \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0.vendor

# WiFi
PRODUCT_PACKAGES += \
    libwpa_client
