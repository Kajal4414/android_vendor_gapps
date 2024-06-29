PRODUCT_SOONG_NAMESPACES += \
    vendor/gapps/core

WITH_GMS := true

PRODUCT_COPY_FILES += \
    vendor/gapps/core/product/etc/default-permissions/default-permissions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions/default-permissions.xml \
    vendor/gapps/core/product/etc/default-permissions/opengapps-permissions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions/opengapps-permissions.xml \
    vendor/gapps/core/product/etc/permissions/com.google.android.dialer.support.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.dialer.support.xml \
    vendor/gapps/core/product/etc/permissions/com.google.android.maps.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.maps.xml \
    vendor/gapps/core/product/etc/permissions/com.google.android.media.effects.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.media.effects.xml \
    vendor/gapps/core/product/etc/permissions/privapp-permissions-google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-google.xml \
    vendor/gapps/core/product/etc/permissions/split-permissions-google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/split-permissions-google.xml \
    vendor/gapps/core/product/etc/preferred-apps/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/preferred-apps/google.xml \
    vendor/gapps/core/product/etc/sysconfig/dialer_experience.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/dialer_experience.xml \
    vendor/gapps/core/product/etc/sysconfig/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google.xml \
    vendor/gapps/core/product/etc/sysconfig/google_build.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google_build.xml \
    vendor/gapps/core/product/etc/sysconfig/google_exclusives_enable.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google_exclusives_enable.xml \
    vendor/gapps/core/product/etc/sysconfig/google-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/gapps/core/system_ext/etc/permissions/privapp-permissions-google.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-google.xml \
    vendor/gapps/core/system/etc/permissions/privapp-permissions-google.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-google.xml

PRODUCT_PACKAGES += \
    AndroidAutoStubPrebuilt \
    GoogleContactsSyncAdapter \
    GoogleExtShared \
    CarrierSetup \
    ConfigUpdater \
    GoogleExtServices \
    GoogleServicesFramework \
    GoogleTTS \
    GoogleServicesFramework \
    Phonesky \
    PrebuiltGmsCore \
    GmsCoreSetupPrebuilt \
    com.google.android.dialer.support \
    com.google.android.maps \
    com.google.android.media.effects

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/gapps/core/overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/gapps/core/overlay
