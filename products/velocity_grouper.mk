# Inherit AOSP device configuration for mako.
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/velocity/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := velocity_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.4/KRT16S/737497:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.4 KRT16S 737497 release-keys"
