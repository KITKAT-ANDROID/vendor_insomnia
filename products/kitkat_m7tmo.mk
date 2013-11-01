#Squisher Choosing
DHO_VENDOR := kitkat

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true 
    

# Inherit common vanir files.
$(call inherit-product, vendor/kitkat/products/gsm.mk)

# Inherit model specific configuration.
$(call inherit-product, vendor/kitkat/products/kitkat_m7.mk)

# Inherit AOSP device configuration for HTC One.
$(call inherit-product, device/htc/m7tmo/full_m7tmo.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := kitkat_m7tmo
PRODUCT_DEVICE := m7tmo
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := One

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JLS36I BUILD_FINGERPRINT="tmous/m7/m7:4.4/KRT16M/170484.7:user/release-keys" PRIVATE_BUILD_DESC="1.27.531.7 CL170484 release-keys"



