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
ifeq (orca_mako,$(TARGET_PRODUCT))

# Define Orca bootanimation size
ORCA_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= true

# Include Orca common configuration
include vendor/orca/config/orca_common.mk

# Inherit GSM common stuff
$(call inherit-product, vendor/orca/config/gsm.mk)

# Inherit AOSP device configuration
$(call inherit-product, device/lge/mako/full_mako.mk)

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/orca/packages/mako.mk

# Override AOSP build properties
PRODUCT_NAME := orca_mako
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT="google/occam/mako:4.2/JOP40C/527662:user/release-keys" PRIVATE_BUILD_DESC="occam-user 4.2 JOP40C 527662 release-keys"

# Check For Mako Updates and Update local_manifest.xml
GET_VENDOR_PROPS := $(shell vendor/orca/tools/getvendorprops.py $(PRODUCT_NAME))
GET_PROJECT_RMS := $(shell vendor/orca/tools/removeprojects.py $(PRODUCT_NAME))
GET_PROJECT_ADDS := $(shell vendor/orca/tools/addprojects.py $(PRODUCT_NAME))

endif

