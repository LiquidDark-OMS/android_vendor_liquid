PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable excessive dalvik debug messages
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/liquid/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/liquid/prebuilt/common/bin/50-liquid.sh:system/addon.d/50-liquid.sh \
    vendor/liquid/prebuilt/common/bin/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/liquid/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# SLIM-specific init file
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.local.rc:root/init.slim.rc

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/liquid/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/liquid/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Viper4Android
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bin/audio_policy.sh:install/bin/audio_policy.sh \
    vendor/liquid/prebuilt/common/addon.d/91-v4a.sh:system/addon.d/91-v4a.sh \
    vendor/liquid/prebuilt/common/etc/audio_effects.conf:system/etc/audio_effects.conf \
    vendor/liquid/prebuilt/common/lib/soundfx/libv4a_fx_ics.so:system/lib/soundfx/libv4a_fx_ics.so \
    vendor/liquid/prebuilt/common/su.d//15v4a.sh:system/su.d/15v4a.sh \
    vendor/liquid/prebuilt/common/vendor/etc/audio_effects.conf:vendor/etc/audio_effects.conf

# Layers
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/Layers.apk:system/app/Layers/Layers.apk \
	vendor/liquid/prebuilt/common/etc/Layersbackup.apk:system/app/Layersbackup/Layersbackup.apk

# Kernel Auditor
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/Kerneladiutor.apk:system/app/Auditor/Kerneladiutor.apk

# No Icon for Layers App
PRODUCT_PROPERTY_OVERRIDES += \
    ro.layers.noIcon=noIcon

# AzureFree Layers
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_browser.apk:vendor/overlay/AzureFree_browser.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_cellbroadcastreceiver.apk:/vendor/overlay/AzureFree_cellbroadcastreceiver.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_contacts.apk:vendor/overlay/AzureFree_contacts.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_deskclock.apk:vendor/overlay/AzureFree_deskclock.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_dialer.apk:vendor/overlay/AzureFree_dialer.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_documentsui.apk:vendor/overlay/AzureFree_documentsui.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_framework-res.apk:vendor/overlay/AzureFree_framework-res.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_gmail.apk:vendor/overlay/AzureFree_gmail.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_googlecontacts.apk:vendor/overlay/AzureFree_googlecontacts.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_googledialer.apk:vendor/overlay/AzureFree_googledialer.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_googlemms.apk:vendor/overlay/AzureFree_googlemms.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_googlenow.apk:vendor/overlay/AzureFree_googlenow.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_googleplus.apk:vendor/overlay/AzureFree_googleplus.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_hangouts.apk:vendor/overlay/AzureFree_hangouts.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_packageinstaller.apk:vendor/overlay/AzureFree_packageinstaller.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_phone.apk:vendor/overlay/AzureFree_phone.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_settings.apk:vendor/overlay/AzureFree_settings.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_supersu.apk:vendor/overlay/AzureFree_supersu.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_systemui.apk:vendor/overlay/AzureFree_systemui.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_telecom.apk:vendor/overlay/AzureFree_telecom.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_teleservice.apk:vendor/overlay/AzureFree_teleservice.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_whatsapp.apk:vendor/overlay/AzureFree_whatsapp.apk \
    vendor/liquid/prebuilt/common/etc/overlay/AzureFree_youtube.apk:vendor/overlay/AzureFree_youtube.apk

# Required packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Development \
    SpareParts

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# Extra Optional packages
PRODUCT_PACKAGES += \
    SlimLauncher \
    LatinIME \
    BluetoothExt \
    DashClock \
    DeskClock \
    Terminal \
    LockClock \
    Viper4Android \
    KernelAdiutor

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    media_codecs_ffmpeg.xml

# Root access on by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1

# easy way to extend to add more packages
-include vendor/extra/product.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/common

# Version
RELEASE = false
LIQUID_VERSION_MAJOR = 6
LIQUID_VERSION_MINOR = 0
#LIQUID_VARIANT = layers

# release
ifeq ($(RELEASE),true)
    LIQUID_VERSION := LD-MM-MileStone-$(LIQUID_VERSION_MAJOR).$(LIQUID_VERSION_MINOR)-$(LIQUID_VARIANT)
else
    LIQUID_VERSION_STATE := $(shell date +%Y%m%d-%H%M)
    LIQUID_VERSION := LD-MM-$(LIQUID_VERSION_STATE)
endif

# Chromium Prebuilt
ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM),yes)
-include prebuilts/chromium/$(TARGET_DEVICE)/chromium_prebuilt.mk
endif

# HFM Files
PRODUCT_COPY_FILES += \
	vendor/liquid/prebuilt/etc/hosts.alt:system/etc/hosts.alt \
	vendor/liquid/prebuilt/etc/hosts.og:system/etc/hosts.og

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.liquid.version=$(LIQUID_VERSION)
