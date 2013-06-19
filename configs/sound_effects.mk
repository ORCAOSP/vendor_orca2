# Sony Clear Audio+
PRODUCT_PROPERTY_OVERRIDES += \
    ro.semc.sound_effects_enabled=true \
    ro.semc.xloud.supported=true \
    persist.service.xloud.enable=1 \
    ro.semc.enhance.supported=true \
    persist.service.enhance.enable=1 \
    ro.semc.clearaudio.supported=true \
    persist.service.clearaudio.enable=1 \
    ro.somc.clearphase.supported=true \
    persist.service.clearphase.enable=1 \
    af.resampler.quality=255 \
    persist.af.resampler.quality=255 \
    mpq.audio.decode=true

PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/common/app/AudioEffectService.apk:system/app/AudioEffectService.apk \
    vendor/orca/prebuilt/common/app/SoundEnhancement.apk:system/app/SoundEnhancement.apk \
    vendor/orca/config/permissions/com.sonyericsson.audioeffectif.xml:system/etc/permissions/com.sonyericsson.audioeffectif.xml \
    vendor/orca/prebuilt/common/framework/semc_audioeffectif.jar:system/framework/semc_audioeffectif.jar
