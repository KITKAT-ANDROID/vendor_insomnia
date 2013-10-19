# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/insomnia/proprietary/cdma/etc/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/insomnia/overlay/cdma_phone
