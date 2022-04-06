- 2022/4/3 17点30分
- 修复编译完成后TG或者pushplus通知，运行步骤报错的问题，请同步仓库使用
---

- 2022/4/3 最新修改
- Lienol_source源码原本的main分支，已经给作者修改成[22.03](https://github.com/Lienol/openwrt/tree/22.03)分支源码，内核版本为5.10，因为要同步修改，所以编译脚本都有更改
- 我顺便也修改了一下脚本，compile.yml文件、diy-part.sh、settings.ini和build-openwrt.yml都有点改动，请大家同步仓库使用

---
- 2022/3/31 最新修改
- 修复使用定时启动编译时，运行至《定时启动编译时清理Actions空间和删除releases数值设置》步骤失败问题
---
- 2022/3/28 最新修改
- 取消每次触发启动编译都同步上游仓库build-openwrt.yml和compile.yml文件的操作
- 请同步最新仓库编译，在线更新也修改过，如果以前有使用的话，请把以前发布的删除，然后重新编译使用
- 增加固件 openwrt 命令，安装好固件后可以在页面的命令窗或者SSH连接后直接输入命令使用
---
- 2022/3/3 最新修改
- Lienol_source源码原本的19.07分支修改成[main](https://github.com/Lienol/openwrt/tree/main)分支源码，内核版本为5.10
---

- ## [`github编译教程`](https://github.com/danshui-git/shuoming#readme)

---
- #### [`本地Ubuntu一键编译`](https://github.com/281677160/bendi)
- #### [`本地一键提取.config然后在云编译脚本使用`](https://github.com/danshui-git/shuoming/blob/master/yijianconfig.md)
---
- # 鸣谢
> [`coolsnowwolf`](https://github.com/coolsnowwolf/lede.git)
> [`Lienol`](https://github.com/Lienol/openwrt.git)
> [`ctcgfw`](https://github.com/project-openwrt/openwrt.git)
> [`P3TERX`](https://github.com/P3TERX/Actions-OpenWrt)
> [`Hyy2001X`](https://github.com/Hyy2001X/AutoBuild-Actions)
> [`dhxh`](https://github.com/dhxh/Openwrt-Build)
> [`ophub`](https://github.com/ophub/amlogic-s9xxx-openwrt)
> [`nicholas-opensource`](https://github.com/nicholas-opensource/OpenWrt-Autobuild)
> [`hx210`](#/README.md)
> [`hyird`](#/README.md)
> [`World Peace`](#/README.md)
> [`klever1988`](https://github.com/klever1988/cachewrtbuild)
