PRODUCT_SOONG_NAMESPACES += \
    vendor/gapps

WITH_GMS := true

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/gapps/product/etc/,$(TARGET_COPY_OUT_PRODUCT)/etc) \
    $(call find-copy-subdir-files,*,vendor/gapps/system_ext/etc/,$(TARGET_COPY_OUT_SYSTEM_EXT)/etc)

PRODUCT_COPY_FILES += \
    vendor/gapps/product/framework/com.google.android.dialer.support.jar:$(TARGET_COPY_OUT_PRODUCT)/framework/com.google.android.dialer.support.jar \
    vendor/gapps/product/lib/libjni_latinimegoogle.so:$(TARGET_COPY_OUT_PRODUCT)/lib/libjni_latinimegoogle.so \
    vendor/gapps/product/lib64/libjni_latinimegoogle.so:$(TARGET_COPY_OUT_PRODUCT)/lib64/libjni_latinimegoogle.so

# Product
PRODUCT_PACKAGES += \
    GoogleCalendarSyncAdapter \
    GoogleContactsSyncAdapter \
    SpeechServicesByGoogle \
    AndroidAutoStub \
    GmsCore \
    GooglePartnerSetup \
    GoogleRestore \
    Phonesky

# System_ext
PRODUCT_PACKAGES += \
    GoogleServicesFramework \
    SetupWizard

# Properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.bs_theme=true \
    ro.com.google.ime.theme_id=5 \
    ro.opa.eligible_device=true \
    ro.setupwizard.rotation_locked=true \
    setupwizard.theme=glif_v3_light

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif
