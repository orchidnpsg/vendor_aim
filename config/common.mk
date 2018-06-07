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

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.mode=OPTIONAL \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true \
    ro.opa.eligible_device=true\
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    ro.build.selinux=0 \
    persist.sys.dun.override=0 \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so \
    ro.storage_manager.enabled=true \
    ro.substratum.verified=true \
    persist.sys.recovery_update=false \
    ro.com.google.ime.theme_id=5 \
    persist.sys.disable_rescue=true

# Set cache location
ifeq ($(BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE),)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.device.cache_dir=/data/cache
else
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.device.cache_dir=/cache
endif

PRODUCT_COPY_FILES += \
    vendor/aim/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/aim/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/aim/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/aim/prebuilt/common/bin/50-base.sh:system/addon.d/50-base.sh \

# Init file
PRODUCT_COPY_FILES += \
    vendor/aim/prebuilt/common/etc/init.local.rc:root/init.aim.rc

# Packages
include vendor/aim/config/aim_extras.mk

# Branding
include vendor/aim/config/version.mk

DEVICE_PACKAGE_OVERLAYS += \
    vendor/aim/overlay/common \
    vendor/aim/overlay/dictionaries

# Fix Dialer
PRODUCT_COPY_FILES +=  \
    vendor/aim/prebuilt/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

#Call special ringtones makefile
include vendor/aim/config/common_audio.mk
