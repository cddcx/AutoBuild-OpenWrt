#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#Modify default IP
#sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

#修改lan网口
sed -i 's/eth0/eth0 eth2 eth3/' openwrt/package/base-files/files/etc/board.d/99-default_network

#修改wan网口
sed -i "2i # network config" openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i "3i uci set network.wan.proto='pppoe'" openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i "4i uci set network.wan.username='CD0283366379757'" openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i "5i uci set network.wan.password='19701115'" openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i "6i uci set network.wan.ifname='eth1'" openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i "7i uci set network.wan6.ifname='eth1'" openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i "8i uci commit network" openwrt/package/lean/default-settings/files/zzz-default-settings

# 修改密码
#sed -i 's/V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0/SOP5eWTA$fJV8ty3QohO0chErhlxCm1:18775/g' openwrt/package/lean/default-settings/files/zzz-default-settings

# 修改默认主题
#sed -i 's/bootstrap/argon-dark-mod/' feeds/luci/collections/luci/Makefile
sed -i 's/bootstrap/argon/' openwrt/feeds/luci/collections/luci/Makefile
