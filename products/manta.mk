# Inherit AOSP device configuration for manta
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit orca common_tablet bits
$(call inherit-product, vendor/orca/configs/common_tablet.mk)

# Manta Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/manta

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_manta

# Setup device specific product configuration
PRODUCT_NAME := orca_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.2.1/JOP40D/533553:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.2.1 JOP40D 533553 release-keys" BUILD_NUMBER=533553

# Copy bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/nexus/bootanimation.zip:system/media/bootanimation.zip \
    vendor/orca/prebuilt/preferences/images/phablet.png:system/etc/paranoid/preferences/images/phablet.png \
    vendor/orca/prebuilt/preferences/images/phone.png:system/etc/paranoid/preferences/images/phone.png \
    vendor/orca/prebuilt/preferences/images/tablet.png:system/etc/paranoid/preferences/images/tablet.png \
    vendor/orca/prebuilt/preferences/images/undefined.png:system/etc/paranoid/preferences/images/undefined.png \
    vendor/orca/prebuilt/preferences/pa_manta/0_colors.xml:system/etc/paranoid/preferences/0_colors.xml \
    vendor/orca/prebuilt/preferences/pa_manta/pref_1.xml:system/etc/paranoid/preferences/pref_1.xml \
    vendor/orca/prebuilt/preferences/pa_manta/pref_2.xml:system/etc/paranoid/preferences/pref_2.xml \
    vendor/orca/prebuilt/preferences/pa_manta/pref_3.xml:system/etc/paranoid/preferences/pref_3.xml \
    vendor/orca/prebuilt/preferences/pa_manta/pref_4.xml:system/etc/paranoid/preferences/pref_4.xml \
    vendor/orca/prebuilt/preferences/pa_manta/pref_5.xml:system/etc/paranoid/preferences/pref_5.xml

