# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d)

ifneq ($(BF_BUILD),)
# Orca Official properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=drewgaren \
    ro.goo.rom=Orca \
    ro.goo.version=$(DATE) \
    ro.orca.version=ORCA-3-$(TARGET_PRODUCT)-$(DATE)
else
# Orca Nightly properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=drewgaren \
    ro.goo.rom=Orca_Nightlies \
    ro.goo.version=$(DATE) \
    ro.orca.version=Orca-3.0.0-$(TARGET_PRODUCT)-$(DATE)
endif


# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
