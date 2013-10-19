# Variable for zip installerscript spam about kernel
KERNEL_SPAM := WHY DOESNT THIS JUST WORK AMGGGG #not related to the kernel... but this build step didn't work anyways, so lulpwned.

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/insomnia/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/insomnia/products/beats.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/insomnia/products/common_phones.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES += \
    vendor/insomnia/proprietary/jf/etc/vanir.cfg:system/etc/vanir.cfg

# 720p overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/insomnia/overlay/720p

# Hot reboot
#PRODUCT_PACKAGE_OVERLAYS += \
    vendor/insomnia/overlay/hot_reboot
