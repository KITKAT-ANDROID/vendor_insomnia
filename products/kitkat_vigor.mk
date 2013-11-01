$(call inherit-product, vendor/kitkat/products/common_phones.mk)
$(call inherit-product, vendor/kitkat/products/cdma.mk)
$(call inherit-product, device/htc/vigor/vigor.mk)
NO_DRM_BLOBS := true
$(call inherit-product, vendor/kitkat/products/beats.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device naming
PRODUCT_NAME := kitkat_vigor
PRODUCT_BRAND := htc
PRODUCT_DEVICE := vigor
PRODUCT_MODEL := ADR6425LVW
PRODUCT_MANUFACTURER := HTC

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/kitkat/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip




