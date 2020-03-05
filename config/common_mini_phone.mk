# Inherit mini common Lineage stuff
$(call inherit-product, vendor/aim/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/aim/config/telephony.mk)
