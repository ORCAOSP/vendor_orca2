# Inherit AOSP device configuration for Galaxy S III Metro PCS.
$(call inherit-product, device/samsung/d2mtr/full_d2mtr.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/orca/configs/cdma.mk)

# Inherit orca common bits
$(call inherit-product, vendor/orca/configs/common.mk)

# S3 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/s3-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_i9300

# Setup device specific product configuration.
PRODUCT_NAME := orca_d2mtr
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2mtr
PRODUCT_MODEL := SCH-R530M
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2usc TARGET_DEVICE=d2usc BUILD_FINGERPRINT="samsung/d2usc/d2usc:4.1.1/JRO03L/R530UVXALK5:user/release-keys" PRIVATE_BUILD_DESC="d2usc-user 4.1.1 JRO03L R530UVXALK5 release-keys"

# Copy mako specific prebuilts
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip \
    vendor/orca/prebuilt/preferences/images/phablet.png:system/etc/paranoid/preferences/images/phablet.png \
    vendor/orca/prebuilt/preferences/images/phone.png:system/etc/paranoid/preferences/images/phone.png \
    vendor/orca/prebuilt/preferences/images/tablet.png:system/etc/paranoid/preferences/images/tablet.png \
    vendor/orca/prebuilt/preferences/images/undefined.png:system/etc/paranoid/preferences/images/undefined.png \
    vendor/orca/prebuilt/preferences/pa_xhdpi/0_colors.xml:system/etc/paranoid/preferences/0_colors.xml \
    vendor/orca/prebuilt/preferences/pa_xhdpi/pref_1.xml:system/etc/paranoid/preferences/pref_1.xml \
    vendor/orca/prebuilt/preferences/pa_xhdpi/pref_2.xml:system/etc/paranoid/preferences/pref_2.xml \
    vendor/orca/prebuilt/preferences/pa_xhdpi/pref_3.xml:system/etc/paranoid/preferences/pref_3.xml \
    vendor/orca/prebuilt/preferences/pa_xhdpi/pref_4.xml:system/etc/paranoid/preferences/pref_4.xml \
    vendor/orca/prebuilt/preferences/pa_xhdpi/pref_5.xml:system/etc/paranoid/preferences/pref_5.xml