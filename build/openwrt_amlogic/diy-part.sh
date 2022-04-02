#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
# DIY扩展二合一了，在此处可以增加插件
# 自行拉取插件之前请SSH连接进入固件配置里面确认过没有你要的插件再单独拉取你需要的插件
# 不要一下就拉取别人一个插件包N多插件的，多了没用，增加编译错误，自己需要的才好
# 修改IP项的EOF于EOF之间请不要插入其他扩展代码，可以删除或注释里面原本的代码
# 如果你的OP是当主路由的话，网关、DNS、广播都不需要，代码前面加 # 注释掉，只保留后台地址和子网掩码就可以
# 如果你有编译ipv6的话，‘去掉LAN口使用内置的 IPv6 管理’代码前面也加 # 注释掉



cat >$NETIP <<-EOF
uci set network.lan.ipaddr='192.168.2.2'                      # IPv4 地址(openwrt后台地址)
uci set network.lan.netmask='255.255.255.0'                   # IPv4 子网掩码
uci set network.lan.gateway='192.168.2.1'                     # IPv4 网关
uci set network.lan.broadcast='192.168.2.255'                 # IPv4 广播
uci set network.lan.dns='223.5.5.5 114.114.114.114'           # DNS(多个DNS要用空格分开)
uci set network.lan.delegate='0'                              # 去掉LAN口使用内置的 IPv6 管理(若用IPV6请注释或者删除这个)
uci set dhcp.@dnsmasq[0].filter_aaaa='1'                      # 禁止解析 IPv6 DNS记录(若用IPV6请注释或者删除这个)

#uci set dhcp.lan.ignore='1'                                  # 关闭DHCP功能（去掉uci前面的#生效）
uci set system.@system[0].hostname='OpenWrt-123'              # 修改主机名称为OpenWrt-123
#uci set ttyd.@ttyd[0].command='/bin/login -f root'           # 设置ttyd免帐号登录（去掉uci前面的#生效）

# 如果有用IPV6的话,可以使用以下命令创建IPV6客户端(LAN口)（去掉全部代码uci前面#号生效）
#uci set network.ipv6=interface
#uci set network.ipv6.proto='dhcpv6'
#uci set network.ipv6.ifname='@lan'
#uci set network.ipv6.reqaddress='try'
#uci set network.ipv6.reqprefix='auto'
EOF


sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile             # argon为编译必选主题(可自行修改您要的,主题名称必须对,插件包必须有该主题)

# 编译多主题时,设置某主题成默认主题（危险操作,你要确定您这里改的主题的名字准确,比如[argon]和肯定编译了该主题,要不然进不了后台）
#sed -i "/exit 0/i\uci set luci.main.mediaurlbase='/luci-static/argon' && uci commit luci" "$BASE_PATH/etc/rc.local"

sed -i "s/OpenWrt /${Author} compiled in $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" $ZZZ_PATH       # 增加个性名字 ${Author} 默认为你的github帐号

sed -i '/CYXluq4wUazHjmCDBCqXF/d' $ZZZ_PATH                                                         # 设置首次登录后台密码为空（进入openwrt后自行修改密码）

sed -i '/to-ports 53/d' $ZZZ_PATH                                                                   # 删除默认防火墙

sed -i "/exit 0/i\sed -i '/coremark/d' /etc/crontabs/root" "$BASE_PATH/etc/rc.local"                # 取消路由器跑分任务



# 设置打包固件的机型，内核组合（可用内核是时时变化的,过老的内核就删除的，所以要选择什么内核请看说明）
cat >$GITHUB_WORKSPACE/amlogic_openwrt <<-EOF
amlogic_model=s905x3_s905x2_s905x_s905w_s905d_s922x_s912
amlogic_kernel=5.10.100_5.4.180 -a true
rootfs_size=960
EOF


# 修改插件名字
sed -i 's/"aMule设置"/"电驴下载"/g' `grep "aMule设置" -rl ./`
sed -i 's/"网络存储"/"NAS"/g' `grep "网络存储" -rl ./`
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' `grep "Turbo ACC 网络加速" -rl ./`
sed -i 's/"实时流量监测"/"流量"/g' `grep "实时流量监测" -rl ./`
sed -i 's/"KMS 服务器"/"KMS激活"/g' `grep "KMS 服务器" -rl ./`
sed -i 's/"TTYD 终端"/"命令窗"/g' `grep "TTYD 终端" -rl ./`
sed -i 's/"USB 打印服务器"/"打印服务"/g' `grep "USB 打印服务器" -rl ./`
sed -i 's/"Web 管理"/"Web"/g' `grep "Web 管理" -rl ./`
sed -i 's/"管理权"/"改密码"/g' `grep "管理权" -rl ./`
sed -i 's/"带宽监控"/"监控"/g' `grep "带宽监控" -rl ./`
sed -i 's/"Argon 主题设置"/"Argon设置"/g' `grep "Argon 主题设置" -rl ./`


# 整理固件包时候,删除您不想要的固件或者文件,让它不需要上传到Actions空间
cat >${GITHUB_WORKSPACE}/Clear <<-EOF
rm -rf config.buildinfo
rm -rf feeds.buildinfo
rm -rf sha256sums
rm -rf version.buildinfo
EOF
