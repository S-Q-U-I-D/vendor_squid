ifneq ($(IS_GENERIC_SYSTEM_IMAGE), true)
ifeq ($(SQUID_BUILD_TYPE), OFFICIAL)

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
    vendor/squid/config/permissions/org.pixelexperience.ota.xml:system/etc/permissions/org.pixelexperience.ota.xml

 endif
endif
