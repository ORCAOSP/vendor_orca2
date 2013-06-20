# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/htc/passion/full_passion.mk)

# Inherit Orca common bits
$(call inherit-product, vendor/orca/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/orca/configs/gsm.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/tuna

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_hdpi

# Setup device specific product configuration.
PRODUCT_NAME := orca_passion
PRODUCT_BRAND   := google
PRODUCT_DEVICE  := passion
PRODUCT_MODEL   := Nexus One
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_FINGERPRINT="google/passion/passion:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="passion-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

PRODUCT_PACKAGES += \
    Thinkfree

# Copy hdpi specific prebuilts
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip \
    vendor/orca/prebuilt/preferences/images/phablet.png:system/etc/paranoid/preferences/images/phablet.png \
    vendor/orca/prebuilt/preferences/images/phone.png:system/etc/paranoid/preferences/images/phone.png \
    vendor/orca/prebuilt/preferences/images/tablet.png:system/etc/paranoid/preferences/images/tablet.png \
    vendor/orca/prebuilt/preferences/images/undefined.png:system/etc/paranoid/preferences/images/undefined.png \
    vendor/orca/prebuilt/preferences/pa_hdpi/0_colors.xml:system/etc/paranoid/preferences/0_colors.xml \
    vendor/orca/prebuilt/preferences/pa_hdpi/pref_1.xml:system/etc/paranoid/preferences/pref_1.xml \
    vendor/orca/prebuilt/preferences/pa_hdpi/pref_2.xml:system/etc/paranoid/preferences/pref_2.xml \
    vendor/orca/prebuilt/preferences/pa_hdpi/pref_3.xml:system/etc/paranoid/preferences/pref_3.xml \
    vendor/orca/prebuilt/preferences/pa_hdpi/pref_4.xml:system/etc/paranoid/preferences/pref_4.xml \
    vendor/orca/prebuilt/preferences/pa_hdpi/pref_5.xml:system/etc/paranoid/preferences/pref_5.xml

