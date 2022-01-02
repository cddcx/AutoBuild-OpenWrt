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

# 修改默认主题
sed -i 's/bootstrap/argon/' openwrt/feeds/luci/collections/luci/Makefile

# 修改密码
sed -i 's/V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0/SOP5eWTA$fJV8ty3QohO0chErhlxCm1:18775/g' openwrt/package/lean/default-settings/files/zzz-default-settings

# 删除文件夹
rm -rf openwrt/package/lean/adbyby
rm -rf openwrt/package/lean/luci-app-adbyby-plus
rm -rf openwrt/package/lean/luci-app-unblockmusic
rm -rf openwrt/package/lean/UnblockNeteaseMusic
rm -rf openwrt/package/lean/UnblockNeteaseMusicGo
