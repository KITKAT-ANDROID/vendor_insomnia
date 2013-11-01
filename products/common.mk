# Theme files
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/kitkat/overlay/theme

# DSPManager and bravia
$(call inherit-product, vendor/kitkat/products/media_sexificators.mk)
$(call inherit-product, vendor/kitkat/config/nfc_enhanced.mk)

# Build packages included in manifest
PRODUCT_PACKAGES += \
    busybox \
    Email \
    su
   
    
    

kitkat_Version=4.4

kitkat_BUILD=$(KitKat_Version)

ifeq ($(RELEASE),)
kitkat_BUILD=$(kitkat_Version)$(shell date +".%m%d%y")
endif

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1 \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg \
    ro.modversion=$(kitkat_BUILD) \
    wifi.supplicant_scan_interval=300 \
    persist.sys.root_access=3 \
    ro.build.selinux=1

ifeq ($(KITKAT_FAILSAFE),)
# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.checkjni=false \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    dalvik.vm.verify-bytecode=false \
    mot.proximity.delay=20 \
    net.bt.name=Android \
    ro.ril.disable.power.collapse=0 \
    ro.vold.umsdirtyratio=20 \
    persist.sys.purgeable_assets=1 \
    persist.sys.use_dithering=0 \
    pm.sleep_mode=0 \
    ro.config.nocheckin=1 \
    ro.config.hwfeature_wakeupkey=0 \
    ro.ext4fs=1 \
    ro.kernel.android.checkjni=0 \
    ro.kernel.checkjni=0 \
    ro.lge.proximity.delay=20 \
    ro.max.fling_velocity=15000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    ro.media.enc.hprof.vid.fps=65 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.jpeg.quality=100 \
    ro.min.fling_velocity=10000 \
    video.accelerate.hw=1
endif

# Disable GC freed lines
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0



# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JLS36I BUILD_ID=JLS36I BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_EST_DATE=$(shell date +"%s")


PRODUCT_COPY_FILES += \
    vendor/kitkat/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/kitkat/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/kitkat/proprietary/common/xbin/vanirinteractivegovernorgovernor:system/xbin/vanirinteractivegovernorgovernor \
    vendor/kitkat/proprietary/common/xbin/vanirflash:system/xbin/vanirflash \
    vendor/kitkat/proprietary/common/init.vanir.rc:root/init.vanir.rc \
    vendor/kitkat/proprietary/common/bin/sysinit:system/bin/sysinit \
    vendor/kitkat/proprietary/common/etc/init.d/00firsties:system/etc/init.d/00firsties \
    vendor/kitkat/proprietary/common/xbin/purgethumbnails:system/xbin/purgethumbnails

PRODUCT_COPY_FILES += \
    vendor/kitkat/proprietary/common/lib/liblightcycle.so:system/lib/liblightcycle.so \
    vendor/kitkat/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/kitkat/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinime.so

ifeq ($(KITKAT_FAILSAFE),)
# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/kitkat/proprietary/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/kitkat/proprietary/common/xbin/hunter:system/xbin/hunter \
    vendor/kitkat/proprietary/common/xbin/testinitd:system/xbin/testinitd \
    vendor/kitkat/proprietary/common/xbin/vanircheckcpu:system/xbin/vanircheckcpu \
    vendor/kitkat/proprietary/common/xbin/vanirtweakapply:system/xbin/vanirtweakapply \
    vendor/kitkat/proprietary/common/xbin/vanir:system/xbin/vanir \
    vendor/kitkat/proprietary/common/xbin/vanirnice:system/xbin/vanirnice

#Imoseyon's zram script
PRODUCT_COPY_FILES += \
    vendor/kitkat/proprietary/common/xbin/zram:system/xbin/zram

# Misc Files
PRODUCT_COPY_FILES += \
    vendor/kitkat/proprietary/common/etc/hosts:system/etc/hosts \
    vendor/kitkat/proprietary/common/etc/resolv.conf:system/etc/resolv.conf

# proprietary guts
PRODUCT_COPY_FILES += \
    vendor/kitkat/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/kitkat/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# entropy mumbo jump
PRODUCT_COPY_FILES += \
    vendor/kitkat/proprietary/common/xbin/CB_RunHaveged:system/xbin/CB_RunHaveged \
    vendor/kitkat/proprietary/common/xbin/haveged:system/xbin/haveged \
    vendor/kitkat/proprietary/common/xbin/vanirentropy:system/xbin/vanirentropy \
    vendor/kitkat/proprietary/common/bin/cronlogger:system/bin/cronlogger

# init.d Tweaks
PRODUCT_COPY_FILES += \
    vendor/kitkat/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/kitkat/proprietary/common/etc/init.d/06ENTROPY:system/etc/init.d/06ENTROPY \
    vendor/kitkat/proprietary/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/kitkat/proprietary/common/etc/init.d/98SONIC_SHOCK:system/etc/init.d/98SONIC_SHOCK \
    vendor/kitkat/proprietary/common/etc/init.d/99vanir:system/etc/init.d/99vanir \
    vendor/kitkat/proprietary/common/etc/init.d/ZZafterboot:system/etc/init.d/ZZafterboot \
    vendor/kitkat/proprietary/common/etc/cron/cron.minutely/00nicetweaks:/system/etc/cron/cron.minutely/00nicetweaks \
    vendor/kitkat/proprietary/common/etc/cron/cron.daily/00sqlitespeed:/system/etc/cron/cron.daily/00sqlitespeed

# Backup Tools
PRODUCT_COPY_FILES += \
    vendor/kitkat/proprietary/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/kitkat/proprietary/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/kitkat/proprietary/common/bin/50-vanir.sh:system/addon.d/50-vanir.sh
endif

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/kitkat/overlay/dictionaries

#Define thirdparty for Koush's SU
#SUPERUSER_PACKAGE := com.vanir.superuser
SUPERUSER_EMBEDDED := true

# Prebuilt SuperSU
PRODUCT_COPY_FILES += \
    vendor/kitkat/proprietary/common/app/Superuser.apk:system/app/superuser.apk \
    vendor/kitkat/proprietary/common/xbin/chattr:system/xbin/chattr \
    vendor/kitkat/proprietary/common/xbin/99SuperSUDaemon:system/xbin/99SuperSUDaemon \
    vendor/kitkat/proprietary/common/xbin/su:system/xbin/su \
    vendor/kitkat/proprietary/common/xbin/daemonsu:system/xbin/daemonsu 


# Required CM packages
PRODUCT_PACKAGES += \
    Camera \
    Development \
    LatinIME \
    Superuser \
    BluetoothExt

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# Optional packages
PRODUCT_PACKAGES += \
    Basic \
    SoundRecorder 
  
    

# Extra tools in CM
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# T-Mobile theme engine
PRODUCT_PACKAGES += \
    ThemeManager \
    ThemeChooser \
    com.tmobile.themes 
  

# sqlite3 - for bad voodoo :-D
PRODUCT_PACKAGES += \
    sqlite3

PRODUCT_COPY_FILES += \
    vendor/kitkat/proprietary/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

-include vendor/kitkat/sepolicy/sepolicy.mk
