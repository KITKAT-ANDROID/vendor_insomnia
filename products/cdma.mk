# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/kitkat/proprietary/cdma/etc/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/kitkat/overlay/cdma_phone
