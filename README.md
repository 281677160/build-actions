
[[Telegram聊天吹水群](https://t.me/heiheiheio)]


1、2023年4月1号，把autobuild仓库合拼到了这里了，以前拉autobuild仓库的应该都不可以用了，请重新拉取这个仓库吧，以前老的build-actions仓库也要重新拉取新的build-actions仓库使用

2、请看最新说明

---

<details>
<summary>🆘各种教程</summary>
<br>
<br />
<br>

《[github actions编译教程](https://github.com/danshui-git/shuoming#%E7%BC%96%E8%AF%91%E6%95%99%E7%A8%8B)》

《[晶晨固件打包设置教程](https://github.com/danshui-git/shuoming/blob/master/Amlogic.md)》

《[本地Ubuntu一键编译](https://github.com/281677160/bendi)》

《[本地一键提取.config然后在云编译脚本使用](https://github.com/281677160/bendi)》

《[在线更新固件插件说明](https://github.com/danshui-git/shuoming/blob/master/%E5%AE%9A%E6%97%B6%E6%9B%B4%E6%96%B0%E6%8F%92%E4%BB%B6.md)》

《[Telegram中文设置方法](https://github.com/danshui-git/shuoming/blob/master/tele.md)》

<br />
</details>

---

<details>
<summary>🆙更新说明</summary>
<br>
<br />
<br>

2023年4月1号，

1、编译教程全修改一遍了，看教程还不能启动编译的话，我只能说多看几次吧

2、增加了编译源码的选择，同作者源码的源码分支之间可以自由切换编译（每个作者源码的可支持选择什么分支，在settings.ini文件有写明）

 3、晶晨系列固件不限制一个源码，理论上可以编译出rootfs.tar.gz包的，应该都可以打包使用，比较常用的有（天灵的openwrt-21.02分支、大雕的master分支、官方的master分支），固件编译跟打包分2次进行，这样免除了打包空间不足，或者编译+打包时间不足的问题，已经编译出了的rootfs.tar.gz可以使用手动启动打包程序，进行多次打包操作
 
 4、luci-app-oscam插件，云编译，编译不成功，云编译的时候切莫选择此插件，本地编译倒是可以编译成功。
 
 5、luci-app-gost插件有段时间也编译不成功，我找了个比较老的版本，也修改了一下，可以编译成功了，没测试过能不能用，有用这个插件的希望可以反馈一下
 
 6、大雕源码，有些机型编译增加mac80211驱动的时候会编译错误的，可以尝试打开【export Replace_mac80211="1"】，默认0是不使用，改成1的试试，还是编译错误的话，我也无解了，我也是在他源码仓库的issues里面看到有人用官方的mac80211替换可以编译成功的，我也测试过，是可以编译成功，但是功能还能不能用就不了解了
 
 7、官方源码的【master】、【openwrt-21.02】、【openwrt-22.03】分支都增加了luci-app-passwall、luci-app-ssr-plus和luci-app-OpenClash插件，【openwrt-19.07】分支增加luci-app-passwall、luci-app-ssr-plus缺依赖，没搞懂缺啥，有懂增加的说说怎么操作
 
 8、我编译仓库里，增加大雕源码【gl-ax1800】分支选择，不是他 https://github.com/coolsnowwolf/lede 源码的分支，是他另外一个仓库 https://github.com/coolsnowwolf/openwrt-gl-ax1800 的源码，看他意思是专门给gl-ax1800路由器准备的，我看了下，也测试了一下，其实就是一个4.14内核的源码，有需要这个内核的朋友，也可以使用这个分支编译
 
 9、每次安装固件完毕，都会在安装完毕30秒左右重启一次系统的，请大家发现这个问题的时候莫慌

<br />
</details>

---

 ### 鸣谢！
 感谢以下各位大佬（排名无分先后）<br />
 
 [`coolsnowwolf`](https://github.com/coolsnowwolf/lede/tree/master)
 [`Lienol`](https://github.com/Lienol/openwrt/tree/21.02)
 [`immortalwrt`](https://github.com/immortalwrt/immortalwrt)
 [`openwrt`](https://github.com/openwrt/openwrt)
 [`x-wrt`](https://github.com/x-wrt/x-wrt)
 [`P3TERX`](https://github.com/P3TERX/Actions-OpenWrt)
 [`Hyy2001X`](https://github.com/Hyy2001X/AutoBuild-Actions)
 [`dhxh`](https://github.com/dhxh/Openwrt-Build)
 [`ophub`](https://github.com/ophub/amlogic-s9xxx-openwrt)
 [`nicholas-opensource`](https://github.com/nicholas-opensource/OpenWrt-Autobuild)
 [`hx210`](#/README.md)
 [`hyird`](#/README.md)
 [`World Peace`](#/README.md)
 [`klever1988`](https://github.com/klever1988/cachewrtbuild)
 [`actions`](https://github.com/actions/upload-artifact)
 [`svenstaro`](https://github.com/svenstaro/upload-release-action)
