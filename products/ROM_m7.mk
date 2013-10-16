

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/ROM/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/ROM/products/common.mk)



# 720p overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ROM/overlay/720p


