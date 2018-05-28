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

# Extra Packages For AimRom
PRODUCT_PACKAGES += \
    BluetoothExt \
    Camera2 \
    Gallery2 \
    RuthlessPixelLauncher \
    ViaBrowser \
    Phonograph \
    Turbo \
    AIMWalls

# AIM OTA
ifeq ($(AIM_BUILD_TYPE),OFFICIAL)
PRODUCT_PACKAGES += \
        AIMOTA \
        libbypass
endif

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
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
    mount.ntfs

# Fonts
 PRODUCT_PACKAGES += \
     AimFonts

# Extra Stuff from Omni/DU/Whatever
PRODUCT_PACKAGES += \
    OmniStyle \
    OmniJaws

# Accent and Base packages
PRODUCT_PACKAGES += \
     PixelTheme \
     StockTheme \
     PinkTheme \
     PixelBaseTheme \
     StockBaseTheme \
     StockBaseFixedTheme

# DarkUI Packages
 PRODUCT_PACKAGES += \
     SettingsDarkThemeOverlay \
     SystemDarkThemeOverlay \
     SystemSettingsIconTintOverlay \
     SysuiQsDarkThemeOverlay \
     GBoardDarkTheme


# BOOT ANIMATION
$(call inherit-product, vendor/aim/prebuilt/bootanimation/bootanimation.mk)

# Set Pixel blue light theme on Gboard
PRODUCT_PROPERTY_OVERRIDES += \
ro.com.google.ime.theme_id=5

# Fix Dialer
 PRODUCT_COPY_FILES +=  \
     vendor/aim/prebuilt/common/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true
