# Inherit common stuff
$(call inherit-product, vendor/ROM/config/common.mk)
$(call inherit-product, vendor/ROM/config/common_full.mk)

PRODUCT_PACKAGES += \
    Mms \
    Torch \
    CellBroadcastReceiver

