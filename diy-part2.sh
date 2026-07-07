#!/bin/bash

# 设置默认IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# 默认主机名
sed -i 's/OpenWrt/CR6608-Docker/g' package/base-files/files/bin/config_generate

# 添加软件包
cat >> .config <<EOF

CONFIG_PACKAGE_dockerd=y
CONFIG_PACKAGE_docker=y
CONFIG_PACKAGE_docker-compose=y
CONFIG_PACKAGE_containerd=y
CONFIG_PACKAGE_runc=y

CONFIG_PACKAGE_luci-app-dockerman=y

CONFIG_PACKAGE_ttyd=y

CONFIG_PACKAGE_samba4-server=y

CONFIG_PACKAGE_kmod-usb-storage=y
CONFIG_PACKAGE_kmod-usb-storage-uas=y

CONFIG_PACKAGE_ntfs3-mount=y
CONFIG_PACKAGE_exfatprogs=y

EOF
