#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#Modify default IP
#sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

# 删除文件夹
#rm -rf package/lean/adbyby
#rm -rf package/lean/luci-app-adbyby-plus
#rm -rf package/lean/luci-app-unblockmusic
#rm -rf package/lean/UnblockNeteaseMusic
#rm -rf package/lean/UnblockNeteaseMusicGo
#rm -rf feeds/packages/net/smartdns

# 修改默认主题
#sed -i 's/bootstrap/argon-dark-mod/' feeds/luci/collections/luci/Makefile
sed -i 's/bootstrap/argon/' openwrt/feeds/luci/collections/luci/Makefile

© 2021 GitHub, Inc.
