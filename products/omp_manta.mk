# Inherit AOSP device configuration for mako.
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit common product files.
$(call inherit-product, vendor/omp/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := omp_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.4/KRT16S/737497:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.4 KRT16S 737497 release-keys"

