#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Add custom software packages 添加自定义软件包 
# -> diy-part1.sh -> Add custom software packages
cat >> .config <<EOF
CONFIG_PACKAGE_luci-theme-atmaterial=y
CONFIG_PACKAGE_luci-app-clash=y
EOF

# Modify default theme 修改默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-atmaterial/g' feeds/luci/collections/luci/Makefile

# Modify default IP 修改默认IP
sed -i 's/192.168.1.1/192.168.1.234/g' package/base-files/files/bin/config_generate

# Clear the default password 清除默认密码
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings
