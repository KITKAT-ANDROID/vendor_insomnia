#Squisher Choosing
DHO_VENDOR := insomnia

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true 
  
# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/insomnia/proprietary/bootanimation/bootanimation.zip:system/media/bootanimation.zip


# Inherit common phone stuff
$(call inherit-product, vendor/insomnia/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/insomnia/products/gsm.mk)
$(call inherit-product, vendor/insomnia/products/beats.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
# This needs update
PRODUCT_COPY_FILES += \
    vendor/insomnia/proprietary/jf/etc/vanir.cfg:system/etc/vanir.cfg

# Inherit AOSP device configuration for GS3 TMO.
$(call inherit-product, device/htc/pyramid/full_pyramid.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := insomnia_pyramid
PRODUCT_DEVICE := pyramid
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := Sensation

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_pyramid BUILD_FINGERPRINT=tmous/htc_pyramid/pyramid:4.0.3/IML74K/356011.14:user/release-keys PRIVATE_BUILD_DESC="3.32.531.14 CL356011 release-keys" BUILD_NUMBER=356011



# Hot reboot
#PRODUCT_PACKAGE_OVERLAYS += \
    vendor/insomnia/overlay/hot_reboot
