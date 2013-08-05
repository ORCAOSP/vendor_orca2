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
ifeq (orca_d710,$(TARGET_PRODUCT))

# Define Orca bootanimation size
ORCA_BOOTANIMATION_NAME := HDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include Orca common configuration
include vendor/orca/config/orca_common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/d710/full_d710.mk)

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/orca/packages/d710.mk

# Override AOSP build properties
PRODUCT_NAME := orca_d710
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SPH-D710
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d710 TARGET_DEVICE=d710 BUILD_FINGERPRINT="samsung/d710/d710:4.1.2/JZO54K/FL16:user/release-keys" PRIVATE_BUILD_DESC="d710-user 4.1.2 JZO54K FL16 release-keys"

# Update local_manifest.xml
GET_VENDOR_PROPS := $(shell vendor/orca/tools/getvendorprops.py $(PRODUCT_NAME))
GET_PROJECT_RMS := $(shell vendor/orca/tools/removeprojects.py $(PRODUCT_NAME))
GET_PROJECT_ADDS := $(shell vendor/orca/tools/addprojects.py $(PRODUCT_NAME))

endif
