ifneq ($(IS_GENERIC_SYSTEM_IMAGE), true)

ifeq ($(SQUID_BUILD_TYPE), Release)

 ifeq ($(IS_GO_VERSION), true)
SQUID_OTA_VERSION_CODE := pie_go
else
SQUID_OTA_VERSION_CODE := pie
endif

 CUSTOM_PROPERTIES += \
    ro.squid.ota.version_code=$(SQUID_OTA_VERSION_CODE)

 PRODUCT_PACKAGES += \
    Updates

 PRODUCT_COPY_FILES += \
    vendor/squid/config/permissions/com.squid.ota.xml:system/etc/permissions/com.squid.ota.xml

 endif
