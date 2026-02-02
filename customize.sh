#!/bin/bash
# 刷新所有插件源，拉取最新源码（编译环境必备步骤）
./scripts/feeds update -a
# 安装所有源的基础插件（确保依赖完整）
./scripts/feeds install -a

# 安装SSR Plus+ 主插件+Luci管理界面+中文简体语言包
./scripts/feeds install luci-app-ssr-plus
./scripts/feeds install luci-i18n-ssr-plus-zh-cn

# 安装PassWall2 主插件+Luci管理界面+中文简体语言包
./scripts/feeds install luci-app-passwall2
./scripts/feeds install luci-i18n-passwall2-zh-cn

# 安装系统通用中文包，确保路由器后台全中文显示
./scripts/feeds install luci-i18n-base-zh-cn
