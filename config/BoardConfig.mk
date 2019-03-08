include vendor/squid/config/BoardConfigKernel.mk

 ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/squid/config/BoardConfigQcom.mk
endif

 include vendor/squid/config/BoardConfigSoong.mk
