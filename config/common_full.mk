# Inherit common Lineage stuff
$(call inherit-product, vendor/aim/config/common.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
