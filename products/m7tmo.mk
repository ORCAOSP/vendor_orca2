# Inherit GSM common stuff
$(call inherit-product, vendor/orca/configs/gsm.mk)

# Inherit orca common bits
$(call inherit-product, vendor/orca/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/m7tmo/full_m7tmo.mk)

# Common Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Device naming
PRODUCT_DEVICE := m7tmo
PRODUCT_NAME := orca_m7tmo
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PPRODUCT_NAME=m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="tmous/m7/m7:4.1.2/JZO54K/170484.7:user/release-keys" PRIVATE_BUILD_DESC="1.27.531.7 CL170484 release-keys"

# Copy Mako specific prebuilts
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