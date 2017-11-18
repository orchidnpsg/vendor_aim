# Inherit full common AIM stuff
$(call inherit-product, vendor/aim/config/common.mk)

# Required packages
PRODUCT_PACKAGES += \
	LatinIME

# Include dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aim/overlay/dictionaries

