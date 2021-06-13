#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 科学上网插件
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
#git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash
git clone https://github.com/fw876/helloworld.git package/luci-app-ssr-plus

# godproxy去广告插件
#git clone https://github.com/godros/luci-app-godproxy.git package/luci-app-godproxy

# smartdns插件
git clone https://github.com/pymumu/smartdns.git package/lean/smartdn
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns
