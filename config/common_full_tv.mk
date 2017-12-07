# Inherit common CM stuff
$(call inherit-product, vendor/aim/config/common_full.mk)

PRODUCT_PACKAGES += AppDrawer

DEVICE_PACKAGE_OVERLAYS += vendor/aim/overlay/tv
