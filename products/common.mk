# Generic product
PRODUCT_NAME := velocity
PRODUCT_BRAND := velocity
PRODUCT_DEVICE := generic

# Common overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    telephony.lteOnGsmDevice=1 \
    ro.telephony.default_network=9 \
    ro.ril.def.preferred.network=9 \
    ro.ril.hsxpa=5 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=24 \
    ro.ril.hsupa.category=8 \
    dalvik.vm.dexopt-flags=m=y \
    ro.hwui.texture_cache_size=128 \
    ro.hwui.layer_cache_size=84 \
    ro.hwui.r_buffer_cache_size=16 \
    ro.hwui.path_cache_size=64 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=12 \
    ro.hwui.texture_cache_flushrate=0.1 \
    ro.ril.power_collapse=1 \
    pm.sleep_mode=1 \
    wifi.supplicant_scan_interval=300 \
    windowsmgr.max_events_per_sec=90 \
    touch.presure.scale=.001 \
    ro.min.fling_velocity=8000 \
    ro.max.fling_velocity=12000

# Needed packages
PRODUCT_PACKAGES += \
    Launcher3 \
    Stk \
    Lightbulb
	
# Common overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/velocity/overlay	

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Inherit kitkat audio package.
$(call inherit-product, vendor/velocity/products/kitkataudio.mk)	

# Bootanimation support
ifneq ($(filter velocity_mako velocity_grouper,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/velocity/proprietary/system/media/768x1280-bootanimation.zip:system/media/bootanimation.zip
endif

ifneq ($(filter velocity_hammerhead velocity_flo velocity_manta,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/velocity/proprietary/system/media/1080x1920-bootanimation.zip:system/media/bootanimation.zip
endif

# Google latinime
PRODUCT_COPY_FILES += \
    vendor/velocity/proprietary/system/app/GoogleLatinIme.apk:system/app/GoogleLatinIme.apk \
    vendor/velocity/proprietary/system/lib/libjni_unbundled_latinimegoogle.so:system/lib/libjni_unbundled_latinimegoogle.so
	
