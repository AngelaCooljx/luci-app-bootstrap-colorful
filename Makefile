#
# Copyright (C) 2008-2014 The LuCI Team <luci@lists.subsignal.org>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=Bootstrap Theme (default)
LUCI_DEPENDS:=+luci-base

PKG_LICENSE:=Apache-2.0

define Package/luci-theme-bootstrap/postrm
#!/bin/sh
[ -n "$${IPKG_INSTROOT}" ] || {
	uci -q delete luci.themes.Bootstrap
	uci -q delete luci.themes.BootstrapDark
	uci -q delete luci.themes.BootstrapLight
	uci -q delete luci.themes.BootstrapDarkBlue
	uci -q delete luci.themes.BootstrapLightBlue
	uci -q delete luci.themes.BootstrapDarkRed
	uci -q delete luci.themes.BootstrapLightRed
	uci -q delete luci.themes.BootstrapDarkGreen
	uci -q delete luci.themes.BootstrapLightGreen
	uci -q delete luci.themes.BootstrapDarkYellow
	uci -q delete luci.themes.BootstrapLightYellow
	uci -q delete luci.themes.BootstrapDarkOrange
	uci -q delete luci.themes.BootstrapLightOrange
	uci -q delete luci.themes.BootstrapDarkPurple
	uci -q delete luci.themes.BootstrapLightPurple
	uci commit luci
}
endef

include ../../luci.mk

# call BuildPackage - OpenWrt buildroot signature
