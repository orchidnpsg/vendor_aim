# Extra Packages For AimRom
PRODUCT_PACKAGES += \
    ThemeInterfacer \
    Amify \
    Turbo \
    AIMWIZARD \
    OmniStyle \
    SoundRecorder

# Enable assistant by default
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true

# MAGISK INCLUDE
ifeq ($(WITH_MAGISK),true)
# Copy Magisk zip
PRODUCT_COPY_FILES += \
    vendor/aim/prebuilt/common/magisk.zip:system/addon.d/magisk.zip
endif

# unlock sim globaly
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.sim_unlocked=1 \
    ro.com.google.ime.theme_id=5

# BOOT ANIMATION
$(call inherit-product, vendor/aim/prebuilt/bootanimation/bootanimation.mk)

 # CHANGELOG
PRODUCT_COPY_FILES += \
	vendor/aim/CHANGELOG.mkdn:system/etc/AIMLOG.txt


# ADB BY DEFAULT 
PRODUCT_PROPERTY_OVERRIDES += persist.service.adb.enable=1

# OTA UPDATE 
$(call inherit-product-if-exists, vendor/aim/aim_ota/ota.mk)


# include definitions for SDCLANG
 include vendor/aim/sdclang/sdclang.mk
