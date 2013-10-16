# Command line tools

PRODUCT_PACKAGES += \
    bash \
    busybox \
    ca-bundle \
    curl \
    dumplogcat \
    e2fsck \
    mke2fs \
    resize2fs \
    rsync \
    scp \
    sftp \
    ssh \
    ssh-keygen \
    sshd \
    sshd_config \
    sshd_motd \
    start-ssh \
    tune2fs \
    vim \
    vimrc \
    wget \
    wgetrc

# Custom init script
PRODUCT_COPY_FILES += \
    vendor/ROM/prebuilt/common/etc/init.rom.rc:root/init.rom.rc

# Utilize init.d scripts
PRODUCT_COPY_FILES += \
    vendor/ROM/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/ROM/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/ROM/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/ROM/prebuilt/common/etc/init.d/05mountext:system/etc/init.d/05mountext \
    vendor/ROM/prebuilt/common/etc/init.d/06handleswap:system/etc/init.d/06handleswap \
    vendor/ROM/prebuilt/common/etc/init.d/20extgapps:system/etc/init.d/20extgapps

# Misc files
PRODUCT_COPY_FILES += \
    vendor/ROM/prebuilt/common/bin/enable_zram:system/bin/enable_zram \
    vendor/ROM/prebuilt/common/bin/welcome_motd:system/bin/welcome_motd
