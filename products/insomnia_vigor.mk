$(call inherit-product, vendor/insomnia/products/common_phones.mk)
$(call inherit-product, vendor/insomnia/products/cdma.mk)
$(call inherit-product, device/htc/vigor/vigor.mk)
NO_DRM_BLOBS := true
$(call inherit-product, vendor/insomnia/products/beats.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device naming
PRODUCT_NAME := insomnia_vigor
PRODUCT_BRAND := htc
PRODUCT_DEVICE := vigor
PRODUCT_MODEL := ADR6425LVW
PRODUCT_MANUFACTURER := HTC

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/insomnia/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# 720p overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/insomnia/overlay/720p

# Hot reboot
#PRODUCT_PACKAGE_OVERLAYS += \
    vendor/insomnia/overlay/hot_reboot
