#!/bin/bash
# 刷新所有插件源，拉取最新源码
./scripts/feeds update -a
# 安装所有源的插件（基础必做）
./scripts/feeds install -a

# 安装SSR Plus+ 主插件+Luci界面+中文简体包
./scripts/feeds install luci-app-ssr-plus
./scripts/feeds install luci-i18n-ssr-plus-zh-cn

# 安装PassWall2 主插件+Luci界面+中文简体包
./scripts/feeds install luci-app-passwall2
./scripts/feeds install luci-i18n-passwall2-zh-cn

# 安装系统通用中文包，确保后台全中文显示
./scripts/feeds install luci-i18n-base-zh-cn

# 修复插件必备依赖，防止编译失败（新手必加）
opkg update
opkg install libustream-openssl curl ca-certificates
