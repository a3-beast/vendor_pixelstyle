# Copyright (C) 2017 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt Packages
PRODUCT_PACKAGES += \
    SoundPickerPrebuilt \
    WallpaperPickerGooglePrebuilt \
    WellbeingPrebuilt
	
# build.prop entrys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wallpapers_loc_request_suw=true

# Bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/pixelstyle/media/bootanimation_720.zip:system/media/bootanimation.zip

# Pixel sysconfig
PRODUCT_COPY_FILES += \
    vendor/pixelstyle/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml
	
# Lawnchair
PRODUCT_PACKAGES += \
    Lawnchair \
    LawnConf

PRODUCT_COPY_FILES += \
    vendor/pixelstyle/etc/permissions/privapp-permissions-lawnchair.xml:system/etc/permissions/privapp-permissions-lawnchair.xml \
    vendor/pixelstyle/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:system/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

# Set Pixel blue light theme on Gboard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.theme_id=5

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/pixelstyle/overlay
DEVICE_PACKAGE_OVERLAYS += \
    vendor/pixelstyle/overlay/common/

