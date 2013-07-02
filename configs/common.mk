# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/dictionaries

# Backup Tool
#PRODUCT_COPY_FILES += \
#    vendor/orca/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# SuperUser
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.orca.superuser

# AOKP Packages
PRODUCT_PACKAGES += \
    AppWidgetPicker \
    GooManager \
    LatinImeDictionaryPack \
    mGerrit \
    Microbes \
    PerformanceControl \
    PermissionsManager \
    Superuser \
    su \
    Torch

# Bigfoot Packages
PRODUCT_PACKAGES += \
    ORCASettings \
    SunBeam \
    Trebuchet \
    LatinImeGoogle \
    DashClock \
    Helium \
    OrcaWallpapers \
    SoundShort \
    OrcaTools

# CM Packages
PRODUCT_PACKAGES += \
    Apollo \
    CMFileManager \
    audio_effects.conf \
    DSPManager \
    libcyanogen-dsp \
    LockClock

# PA Packages
PRODUCT_PACKAGES += \
    ParanoidPreferences

# Bigfoot build.prop tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.amr.wideband=1 \
    ro.pa.family=$(OVERLAY_TARGET)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0 \
    persist.sys.root_access=3

PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/orca/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/orca/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/orca/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
    vendor/orca/prebuilt/common/etc/persist.conf:system/etc/persist.conf \
    vendor/orca/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/orca/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/orca/prebuilt/common/bin/50-backupScript.sh:system/addon.d/50-backupScript.sh

# Camera effects
PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/orca/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# ParanoidAndroid Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/prebuilt/preferences/$(TARGET_PRODUCT)

# Allow device family to add overlays and use a same prop.conf
ifneq ($(OVERLAY_TARGET),)
    PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/$(OVERLAY_TARGET)
    PA_CONF_SOURCE := $(OVERLAY_TARGET)
else
    PA_CONF_SOURCE := $(TARGET_PRODUCT)
endif

PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/$(PA_CONF_SOURCE).conf:system/etc/paranoid/properties.conf \
    vendor/orca/prebuilt/$(PA_CONF_SOURCE).conf:system/etc/paranoid/backup.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/common/etc/init.local.rc:root/init.bigfoot.rc \
    vendor/orca/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/orca/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/orca/prebuilt/common/etc/init.d/00orca:system/etc/init.d/00orca \
    vendor/orca/prebuilt/common/etc/init.d/02cleaning:system/etc/init.d/02cleaning \
    vendor/orca/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/orca/prebuilt/common/etc/init.d/97battery:system/etc/init.d/97battery \
    vendor/orca/prebuilt/common/etc/init.d/98fruit:system/etc/init.d/98fruit \
    vendor/orca/prebuilt/common/etc/init.d/99Orca_Tweaks:system/etc/init.d/99Orca_Tweaks \
    vendor/orca/prebuilt/common/etc/init.d/99rngd:system/etc/init.d/99rngd \
    vendor/orca/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/orca/prebuilt/common/bin/sysinit:system/bin/sysinit

# Misc Files
PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/common/etc/init.d/01pikachu:system/etc/init.d/01pikachu \
    vendor/orca/prebuilt/common/etc/init.d/95zipalign:system/etc/init.d/95zipalign \
    vendor/orca/prebuilt/common/etc/init.d/98heuheu:system/etc/init.d/98heuheu \
    vendor/orca/prebuilt/common/bin/zipalign:system/bin/zipalign

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    libssh \
    ssh \
    sshd \
    sshd-config \
    ssh-keygen \
    sftp \
    scp

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

# Inherit common build.prop overrides
-include vendor/orca/configs/common_versions.mk

# T-Mobile theme engine
include vendor/orca/configs/themes_common.mk

# Lets Use Android 4.3 Ringtones
PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/common/media/audio/alarms/Argon.ogg:system/media/audio/alarms/Argon.ogg \
    vendor/orca/prebuilt/common/media/audio/alarms/Carbon.ogg:system/media/audio/alarms/Carbon.ogg \
    vendor/orca/prebuilt/common/media/audio/alarms/Helium.ogg:system/media/audio/alarms/Helium.ogg \
    vendor/orca/prebuilt/common/media/audio/alarms/Krypton.ogg:system/media/audio/alarms/Krypton.ogg \
    vendor/orca/prebuilt/common/media/audio/alarms/Neon.ogg:system/media/audio/alarms/Neon.ogg \
    vendor/orca/prebuilt/common/media/audio/alarms/Osmium.ogg:system/media/audio/alarms/Osmium.ogg \
    vendor/orca/prebuilt/common/media/audio/alarms/Oxygen.ogg:system/media/audio/alarms/Oxygen.ogg \
    vendor/orca/prebuilt/common/media/audio/alarms/Platinum.ogg:system/media/audio/alarms/Platinum.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Adara.ogg:system/media/audio/notifications/Adara.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Alya.ogg:system/media/audio/notifications/Alya.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Arcturus.ogg:system/media/audio/notifications/Arcturus.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Capella.ogg:system/media/audio/notifications/Capella.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/CetiAlpha.ogg:system/media/audio/notifications/CetiAlpha.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Hojus.ogg:system/media/audio/notifications/Hojus.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Mira.ogg:system/media/audio/notifications/Mira.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Pollux.ogg:system/media/audio/notifications/Pollux.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Procyon.ogg:system/media/audio/notifications/Procyon.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Shaula.ogg:system/media/audio/notifications/Shaula.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Spica.ogg:system/media/audio/notifications/Spica.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Syrma.ogg:system/media/audio/notifications/Syrma.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Talitha.ogg:system/media/audio/notifications/Talitha.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Tejat.ogg:system/media/audio/notifications/Tejat.ogg \
    vendor/orca/prebuilt/common/media/audio/notifications/Vega.ogg:system/media/audio/notifications/Vega.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Andromeda.ogg:system/media/audio/ringtones/Andromeda.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Aquila.ogg:system/media/audio/ringtones/Aquila.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/ArgoNavis.ogg:system/media/audio/ringtones/ArgoNavis.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Atria.ogg:system/media/audio/ringtones/Atria.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Centaurus.ogg:system/media/audio/ringtones/Centaurus.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Girtab.ogg:system/media/audio/ringtones/Girtab.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Hydra.ogg:system/media/audio/ringtones/Hydra.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Kuma.ogg:system/media/audio/ringtones/Kuma.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Machina.ogg:system/media/audio/ringtones/Machina.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Orion.ogg:system/media/audio/ringtones/Orion.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Pegasus.ogg:system/media/audio/ringtones/Pegasus.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Pyxis.ogg:system/media/audio/ringtones/Pyxis.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Rasalas.ogg:system/media/audio/ringtones/Rasalas.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/RobotsforEveryone.ogg:system/media/audio/ringtones/RobotsforEveryone.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Scarabaeus.ogg:system/media/audio/ringtones/Scarabaeus.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Sceptrum.ogg:system/media/audio/ringtones/Sceptrum.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Solarium.ogg:system/media/audio/ringtones/Solarium.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/SpagnolaOrchestration.ogg:system/media/audio/ringtones/SpagnolaOrchestration.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Themos.ogg:system/media/audio/ringtones/Themos.ogg \
    vendor/orca/prebuilt/common/media/audio/ringtones/Zeta.ogg:system/media/audio/ringtones/Zeta.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/Dock.ogg:system/media/audio/ui/Dock.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/Lock.ogg:system/media/audio/ui/Lock.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/PowerOff.ogg:system/media/audio/ui/PowerOff.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
    vendor/orca/prebuilt/common/media/audio/ui/WirelessChargingStarted.ogg:system/media/audio/ui/WirelessChargingStarted.ogg     

# Google Proprietaries
PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/common/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
    vendor/orca/prebuilt/common/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so

# SuperSU and sysrw
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/orca/prebuilt/common/xbin/sysro:system/xbin/sysro
