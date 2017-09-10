# Inherit common AOSP stuff
$(call inherit-product, vendor/aim/config/common.mk)

$(call inherit-product, vendor/aim/config/telephony.mk)

$(call inherit-product, vendor/aim/config/aim_props.mk)
