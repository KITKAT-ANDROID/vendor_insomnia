#Squisher Choosing
DHO_VENDOR := insomnia

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true 
    

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/insomnia/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/insomnia/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/insomnia/products/cdma.mk)
$(call inherit-product, vendor/insomnia/products/beats.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
# This needs update
PRODUCT_COPY_FILES += \
    vendor/insomnia/proprietary/jf/etc/vanir.cfg:system/etc/vanir.cfg

# Inherit AOSP device configuration for GS3 SPR.
$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := insomnia_d2spr
PRODUCT_DEVICE := d2spr
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SPH-L710

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2spr TARGET_DEVICE=d2spr BUILD_FINGERPRINT="samsung/d2spr/d2spr:4.3/JLS36G/L710VPBMD4:user/release-keys" PRIVATE_BUILD_DESC="d2spr-user 4.3 JLS36G L710VPBMD4 release-keys"

# 720p overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/insomnia/overlay/720p

# Hot reboot
#PRODUCT_PACKAGE_OVERLAYS += \
    vendor/insomnia/overlay/hot_reboot
