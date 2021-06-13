#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#Modify default IP
#sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

# 修改默认主题
#sed -i 's/bootstrap/argon-dark-mod/' feeds/luci/collections/luci/Makefile
sed -i 's/bootstrap/argon/' openwrt/feeds/luci/collections/luci/Makefile
