#
# Copyright (C) 2020 AIMROM
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

ifeq ($(TARGET_SCREEN_RES), 720)
	PRODUCT_COPY_FILES += vendor/aim/bootanimation/720p/bootanimation.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_SCREEN_RES), 1080)
	PRODUCT_COPY_FILES += vendor/aim/bootanimation/1080p/bootanimation.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_SCREEN_RES), 1440)
	PRODUCT_COPY_FILES += vendor/aim/bootanimation/1440p/bootanimation.zip:system/media/bootanimation.zip
else
	PRODUCT_COPY_FILES += vendor/aim/bootanimation/1080p/bootanimation.zip:system/media/bootanimation.zip
endif
