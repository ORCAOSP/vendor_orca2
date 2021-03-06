$(call inherit-product, device/moto/wingray/full_wingray.mk)

$(call inherit-product, vendor/orca/configs/common_tablet.mk)

# xoom Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/common_tablet

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xoom

# Discard inherited values and use our own instead.
PRODUCT_NAME := orca_wingray
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := wingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=tervigon BUILD_ID=JDQ39 BUILD_FINGERPRINT=motorola/tervigon/wingray:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="tervigon-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy Mako specific prebuilts
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/preferences/images/phablet.png:system/etc/paranoid/preferences/images/phablet.png \
    vendor/orca/prebuilt/preferences/images/phone.png:system/etc/paranoid/preferences/images/phone.png \
    vendor/orca/prebuilt/preferences/images/tablet.png:system/etc/paranoid/preferences/images/tablet.png \
    vendor/orca/prebuilt/preferences/images/undefined.png:system/etc/paranoid/preferences/images/undefined.png \
    vendor/orca/prebuilt/preferences/pa_xoom/0_colors.xml:system/etc/paranoid/preferences/0_colors.xml \
    vendor/orca/prebuilt/preferences/pa_xoom/pref_1.xml:system/etc/paranoid/preferences/pref_1.xml \
    vendor/orca/prebuilt/preferences/pa_xoom/pref_2.xml:system/etc/paranoid/preferences/pref_2.xml \
    vendor/orca/prebuilt/preferences/pa_xoom/pref_3.xml:system/etc/paranoid/preferences/pref_3.xml \
    vendor/orca/prebuilt/preferences/pa_xoom/pref_4.xml:system/etc/paranoid/preferences/pref_4.xml \
    vendor/orca/prebuilt/preferences/pa_xoom/pref_5.xml:system/etc/paranoid/preferences/pref_5.xml
