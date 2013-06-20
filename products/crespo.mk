# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/orca/configs/gsm.mk)

# Inherit orca common bits
$(call inherit-product, vendor/orca/configs/common.mk)

# Use Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/tuna

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_hdpi

# Setup device specific product configuration.
PRODUCT_NAME := orca_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_FINGERPRINT="google/soju/crespo:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="soju-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

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
