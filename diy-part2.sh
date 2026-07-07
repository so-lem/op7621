#!/bin/bash

# 设置默认IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# 设置主机名
sed -i 's/OpenWrt/CR6608-Docker/g' package/base-files/files/bin/config_generate

# Docker相关
cat >> .config <<EOF

CONFIG_PACKAGE_docker=y
CONFIG_PACKAGE_docker-compose=y
CONFIG_PACKAGE_containerd=y
CONFIG_PACKAGE_runc=y

# 终端
CONFIG_PACKAGE_ttyd=y

# Samba
CONFIG_PACKAGE_samba4-server=y

# USB存储
CONFIG_PACKAGE_kmod-usb-storage=y
CONFIG_PACKAGE_kmod-usb-storage-uas=y

EOF
