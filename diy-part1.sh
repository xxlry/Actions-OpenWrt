#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Add custom software packages 添加自定义软件包 
# - 需要在diy-part2.sh脚本编写追加自定义内容至.config
mkdir -p package/others
# theme
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/others/luci-theme-atmateria
# clash
git clone https://github.com/frainzy1477/luci-app-clash.git package/others/luci-app-clash
