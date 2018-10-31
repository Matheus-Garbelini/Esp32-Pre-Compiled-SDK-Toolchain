deps_config := \
	/root/esp/esp-idf/components/app_trace/Kconfig \
	/root/esp/esp-idf/components/aws_iot/Kconfig \
	/root/esp/esp-idf/components/bt/Kconfig \
	/root/esp/esp-idf/components/driver/Kconfig \
	/root/esp/esp-idf/components/esp32/Kconfig \
	/root/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/root/esp/esp-idf/components/esp_http_client/Kconfig \
	/root/esp/esp-idf/components/ethernet/Kconfig \
	/root/esp/esp-idf/components/fatfs/Kconfig \
	/root/esp/esp-idf/components/freertos/Kconfig \
	/root/esp/esp-idf/components/heap/Kconfig \
	/root/esp/esp-idf/components/http_server/Kconfig \
	/root/esp/esp-idf/components/libsodium/Kconfig \
	/root/esp/esp-idf/components/log/Kconfig \
	/root/esp/esp-idf/components/lwip/Kconfig \
	/root/esp/esp-idf/components/mbedtls/Kconfig \
	/root/esp/esp-idf/components/mdns/Kconfig \
	/root/esp/esp-idf/components/mqtt/Kconfig \
	/root/esp/esp-idf/components/openssl/Kconfig \
	/root/esp/esp-idf/components/pthread/Kconfig \
	/root/esp/esp-idf/components/spi_flash/Kconfig \
	/root/esp/esp-idf/components/spiffs/Kconfig \
	/root/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/root/esp/esp-idf/components/vfs/Kconfig \
	/root/esp/esp-idf/components/wear_levelling/Kconfig \
	/root/esp/esp-idf/components/arduino/Kconfig.projbuild \
	/root/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/root/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/root/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/root/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
