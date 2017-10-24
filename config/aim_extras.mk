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
    Gallery2 \
    Launcher3 \
    ViaBrowser \
    Phonograph \
    SnapdragonCamera

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

# Themes
 PRODUCT_PACKAGES += \
     PixelTheme \
     Stock


# BOOT ANIMATION
$(call inherit-product, vendor/aim/prebuilt/bootanimation/bootanimation.mk)

# Fix Dialer
 PRODUCT_COPY_FILES +=  \
     vendor/aim/prebuilt/common/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

