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
$(call inherit-product, vendor/insomnia/products/gsm.mk)
$(call inherit-product, vendor/insomnia/products/beats.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
# This needs update
PRODUCT_COPY_FILES += \
    vendor/insomnia/proprietary/jf/etc/vanir.cfg:system/etc/vanir.cfg

# Inherit AOSP device configuration for GS3 ATT.
$(call inherit-product, device/samsung/d2att/full_d2att.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := insomnia_d2att
PRODUCT_DEVICE := d2att
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SGH-I747

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2att TARGET_DEVICE=d2att BUILD_FINGERPRINT="samsung/d2att/d2att:4.3/JLS36G/I747UCDMG2:user/release-keys" PRIVATE_BUILD_DESC="d2att-user 4.3 JLS36G I747UCDMG2 release-keys"



# Hot reboot
#PRODUCT_PACKAGE_OVERLAYS += \
    vendor/insomnia/overlay/hot_reboot
