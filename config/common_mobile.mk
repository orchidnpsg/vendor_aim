# Inherit common mobile Lineage stuff
$(call inherit-product, vendor/aim/config/common.mk)

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifneq ($(TARGET_BUILD_VARIANT),user)
# Thank you, please drive thru!
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += persist.sys.dun.override=0
endif

# Optional packages
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    PhotoTable

# AOSP packages
PRODUCT_PACKAGES += \
    Email \
    ExactCalculator \
    Exchange2

# Lineage packages
PRODUCT_PACKAGES += \
    AudioFX \
    Backgrounds \
    Eleven \
    Etar \
    LockClock \
    Profiles \
    Seedvault \
    TrebuchetQuickStep \
    WeatherProvider

# AIM packages
PRODUCT_PACKAGES += \
    Longshot \
    OmniSwitch \
    OmniStyle \
    OPScreenRecord \
    ViaBrowser

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Custom off-mode charger
ifeq ($(WITH_LINEAGE_CHARGER),true)
PRODUCT_PACKAGES += \
    lineage_charger_res_images \
    font_log.png \
    libhealthd.lineage
endif

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true
