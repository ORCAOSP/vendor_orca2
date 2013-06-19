# Galaxy Nexus items (maguro, toro, toroplus)
PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/common/etc/init.d/99tunacontrol:system/etc/init.d/99tunacontrol

# Use it here for testing
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.purgeable_assets=1
