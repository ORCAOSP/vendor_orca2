# Copyright (C) 2013 The Orca Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (orca_endeavoru,$(TARGET_PRODUCT))

# Define Orca bootanimation size
ORCA_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE := false

# Include Orca common configuration
include vendor/orca/config/orca_common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/htc/endeavoru/full_endeavoru.mk)

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/orca/packages/endeavoru.mk

# CM Extras
-include vendor/orca/packages/cm.mk

# Override AOSP build properties
PRODUCT_NAME := orca_endeavoru
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One X
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=endeavoru BUILD_FINGERPRINT="htc_europe/endeavoru/endeavoru:4.1.1/JRO03C/128187.27:user/release-keys"
PRIVATE_BUILD_DESC="3.14.401.27 CL128187 release-keys"

# Update local_manifest.xml
GET_VENDOR_PROPS := $(shell vendor/orca/tools/getvendorprops.py $(PRODUCT_NAME))
GET_PROJECT_RMS := $(shell vendor/orca/tools/removeprojects.py $(PRODUCT_NAME))
GET_PROJECT_ADDS := $(shell vendor/orca/tools/addprojects.py $(PRODUCT_NAME))

endif

