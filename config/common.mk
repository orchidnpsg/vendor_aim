# Copyright (C) 2017 AIMROM
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

# include definitions for SDCLANG
# include vendor/aim/sdclang/sdclang.mk

include vendor/aim/config/version.mk

PRODUCT_BRAND ?= AIMROM

# Use signing keys for user builds
ifeq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/aim/.keys/release
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/aim/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/aim/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/aim/prebuilt/common/bin/50-base.sh:system/addon.d/50-base.sh \


DEVICE_PACKAGE_OVERLAYS += \
    vendor/aim/overlay/common \
    vendor/aim/overlay/dictionaries

# Custom AIM packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    Launcher3 \
    LiveWallpapers \
    LiveWallpapersPicker \
    Stk

# Extra tools
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
    bzip2 \
    curl \
    lib7z \
    powertop \
    pigz \
    tinymix \
    unrar \
    unzip \
    zip

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/aim/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# For keyboard gesture typing
PRODUCT_COPY_FILES += \
    vendor/aim/prebuilt/common/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinime.so

# init.d support
PRODUCT_COPY_FILES += \
    vendor/aim/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner

# AIM-specific init file
PRODUCT_COPY_FILES += \
    vendor/aim/prebuilt/common/etc/init.local.rc:root/init.aim.rc

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/aim/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl
    
# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

# Needed by some RILs and for some gApps packages
PRODUCT_PACKAGES += \
    librsjni \
    libprotobuf-cpp-full

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# Recommend using the non debug dexpreopter
USE_DEX2OAT_DEBUG ?= false

#Aim extra for custom packages
include vendor/aim/config/aim_extras.mk
