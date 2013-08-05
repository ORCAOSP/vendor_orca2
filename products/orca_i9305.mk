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
ifeq (orca_i9305,$(TARGET_PRODUCT))

# Define ORCA bootanimation size
ORCA_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_i9300

# Build paprefs from sources
PREFS_FROM_SOURCE ?= true

# Include Orca common configuration
include vendor/orca/config/orca_common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/i9305/full_i9305.mk)

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/orca/packages/i9305.mk

# CM Package Extras
-include vendor/orca/packages/cm.mk

# Override AOSP build properties
PRODUCT_NAME := orca_i9305
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9305
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m3xx TARGET_DEVICE=m3 BUILD_FINGERPRINT="samsung/m3xx/m3:4.1.2/JZO54K/I9305XXBMA6:user/release-keys" PRIVATE_BUILD_DESC="m3xx-user 4.1.2 JZO54K I9305XXBMA6 release-keys"

# Update local_manifest.xml
GET_VENDOR_PROPS := $(shell vendor/orca/tools/getvendorprops.py $(PRODUCT_NAME))
GET_PROJECT_RMS := $(shell vendor/orca/tools/removeprojects.py $(PRODUCT_NAME))
GET_PROJECT_ADDS := $(shell vendor/orca/tools/addprojects.py $(PRODUCT_NAME))
GET_CM_PROJECT_ADDS := $(shell vendor/orca/tools/addprojects.py cm.adds)

endif
