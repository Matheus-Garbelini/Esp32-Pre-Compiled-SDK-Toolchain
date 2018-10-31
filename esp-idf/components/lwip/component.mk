#
# Component Makefile
#
COMPONENT_SUBMODULES += lwip

COMPONENT_ADD_INCLUDEDIRS := \
	include/apps \
	lwip/src/include \
	port/esp32/include \
	port/esp32/include/arch

COMPONENT_SRCDIRS := \
	apps/dhcpserver \
	apps/ping \
	lwip/src/api \
	lwip/src/apps/sntp \
	lwip/src/core \
	lwip/src/core/ipv4 \
	lwip/src/core/ipv6 \
	lwip/src/netif \
	port/esp32 \
	port/esp32/freertos \
	port/esp32/netif \
	port/esp32/debug

ifdef CONFIG_PPP_SUPPORT
    COMPONENT_SRCDIRS += lwip/src/netif/ppp lwip/src/netif/ppp/polarssl
endif

CFLAGS += -Wno-address  # lots of LWIP source files evaluate macros that check address of stack variables