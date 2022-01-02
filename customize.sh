#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#Modify default IP
#sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

# 修改内核 5.4改为5.10
sed -i 's/PATCHVER:=5.10/PATCHVER:=5.15/g' openwrt/target/linux/x86/Makefile

# 软件中心istore
svn co https://github.com/linkease/istore/trunk/luci/luci-app-store package/luci-app-store
rm -rf package/luci-app-store/.svn
sed -i 's/("iStore"), 31/("应用商店"), 61/g' package/luci-app-store/luasrc/controller/store.lua

# 修改默认主题
sed -i 's/bootstrap/argon/' openwrt/feeds/luci/collections/luci/Makefile
