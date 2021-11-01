- 《[Telegram聊天吹水群](https://t.me/heiheiheio)》- 《[Telegram中文设置方法](https://github.com/danshui-git/shuoming/blob/master/tele.md)》

- # 择要
---
- 2021/10/29号更新
- 《[全新启动编译教程（必须获取密匙后才可以）](https://github.com/danshui-git/shuoming/blob/master/config.md)》
- 《[全新一键保存配置同步上游仓库说明](https://github.com/danshui-git/shuoming/blob/master/chongxinfork.md)》
- 《[固件包减负](https://github.com/danshui-git/shuoming/blob/master/%E5%9B%BA%E4%BB%B6%E6%96%87%E4%BB%B6%E5%A4%B9%E6%95%B4%E7%90%86.md)》
- 新手教程全新整理了一下，应该更容易看懂了
---
- # 介绍
---
- [Lede_source](https://github.com/coolsnowwolf/lede)，Luci版本=18.06、内核版本=5.4和5.10
- [Lienol_source](https://github.com/Lienol/openwrt/tree/19.07)，Luci版本=17.01、内核版本=4.14
- [Mortal_source](https://github.com/immortalwrt/immortalwrt/tree/openwrt-21.02)，Luci版本=21.02、内核版本=5.4
- [Tianling_source](https://github.com/immortalwrt/immortalwrt/tree/openwrt-18.06)，Luci版本=18.06、内核版本=4.19和4.14
- [openwrt_amlogic](https://github.com/coolsnowwolf/lede)，N1和晶晨系列CPU盒子专用（Luci版本=18.06、内核版本=5.4和5.10）

- openwrt_amlogic文件夹，编译S905x3, S905x2, S922x, S905x, S905d, s912《[自动打包您所需的固件说明](https://github.com/danshui-git/shuoming/blob/master/Amlogic.md)》

- 固件源码已直接加入了常用插件源码了，您要自己拉取插件源码之前，请先看看【[常用插件列表](https://github.com/danshui-git/shuoming/blob/master/%E5%90%8D%E7%A7%B0.md)】，是否带了你的插件，或者是相同功能的插件。

- 《[如何在本地Ubuntu一键无脑编译](https://github.com/281677160/bendi)》
 
- 《[把定时自动在线更新插件编译进固件的说明](https://github.com/danshui-git/shuoming/blob/master/%E5%AE%9A%E6%97%B6%E6%9B%B4%E6%96%B0%E6%8F%92%E4%BB%B6.md)》

```
AdGuardHome更新核心的时候如果遇见‘A task is already running.’这个显示的话，请用命令来更新核心，
op自带的ttyd或者用putty连接OP都可以，用了命令后会一直使用命令到更新到核心为止的，一般情况都能更新到核心。

 命令是：while ! bash /usr/share/AdGuardHome/update_core.sh ; do sleep 2 ; done ; echo succeed
```
---
#
- # 编译教程：
- ### 以下的说明教程都是在我另外的仓库的，查看说明时候就跳转到另外仓库了，浏览器回退就会回来，别拉取到我说明的仓库，注意了！
#
- 编译openwrt两个常用的工具下载地址《[PuTTY(SSH)工具](https://github.com/danshui-git/shuoming/blob/master/Putty%E5%B7%A5%E5%85%B7%E4%B8%8B%E8%BD%BD.md)》《[WinSCP文件管理](https://github.com/danshui-git/shuoming/blob/master/WinSCP.md)》
#
- > 1、注册及登录github账号，github个别地区或网络已筑墙,请自备梯子《[注册链接](https://github.com)》
#
- > 2、拉取我的仓库到你的github帐号《[拉取仓库教程](https://github.com/danshui-git/shuoming/blob/master/1%E6%8B%89%E5%8F%96%E4%BB%93%E5%BA%93.md)》
#
- > 3、必须了解的脚本简单介绍《[脚本简单介绍](https://github.com/danshui-git/shuoming/blob/master/%E7%AE%80%E5%8D%95%E4%BB%8B%E7%BB%8D%E6%96%B0%E8%84%9A%E6%9C%AC.md)》
#
- > 4、必须获取密匙然后在你拉取我的仓库里使用，要不然我的仓库您使用不了《[仓库密匙获取跟使用](https://github.com/danshui-git/shuoming/blob/master/jm.md)》
#
- > 5、选择要编译的源码文件《[选择编译源码教程](https://github.com/danshui-git/shuoming/blob/master/%E9%80%89%E6%8B%A9%E6%9C%BA%E5%9E%8B.md)》
#
- > 6、修改后台登录IP，在build文件夹-->对应您在第 5 步修改的源码文件夹里点开[diy-part.sh]，然后修改后台登录IP《[修改ip教程](https://github.com/danshui-git/shuoming/blob/master/ip.md)》
#
- > 7、开启或者关闭某功能，在build文件夹-->对应您在第 5 步修改的源码文件夹里点开[settings.ini]，然后按需控制各项目开关《[各开关控制教程](https://github.com/danshui-git/shuoming/blob/master/kaiguan.md)》
#
- > 8、启动编译《[启动编译程序和SSH连接修改插件机型等教程](https://github.com/danshui-git/shuoming/blob/master/config.md)》
#
- > 9、完成编译，下载固件《[固件下载教程](https://github.com/danshui-git/shuoming/blob/master/4%E5%9B%BA%E4%BB%B6%E4%B8%8B%E8%BD%BD.md)》
#
- > 10、安装固件，安装固件时出现“Please press Enter to activate this console”就表示安装好了，出现这个就不会跑码的，稍等2-3分钟就可以在浏览器输入IP进入openwrt后台了
- > 如果会跑码，就耐心等待跑码完成，大概2-3分钟就能跑完的
#
- > 11、下次编译，在不改变.config配置文件的情况下，就不需要开启SSH连接再次获取了，直接启动编译就可以了，不改变配置的话，手机都可以启动编译
#
- > 12、
- 《[固件包减负](https://github.com/danshui-git/shuoming/blob/master/%E5%9B%BA%E4%BB%B6%E6%96%87%E4%BB%B6%E5%A4%B9%E6%95%B4%E7%90%86.md)》
- 《[仓库密匙获取跟使用](https://github.com/danshui-git/shuoming/blob/master/jm.md)》
- 《[增加编译机型文件夹的方法](https://github.com/danshui-git/shuoming/blob/master/jlck.md)》
- 《[定时触发开启编译说明](https://github.com/danshui-git/shuoming/blob/master/%E5%AE%9A%E6%97%B6%E7%BC%96%E8%AF%91%E8%AF%B4%E6%98%8E.md)》
- 《[一键保存配置同步上游仓库启动说明](https://github.com/danshui-git/shuoming/blob/master/chongxinfork.md)》
- 《[IPV4/IPV6选择](https://github.com/danshui-git/shuoming/blob/master/%E5%85%B6%E4%BB%96%E8%AF%B4%E6%98%8E.md)》
- 《[banner的说明](https://github.com/danshui-git/shuoming/blob/master/banner%E8%AF%B4%E6%98%8E.md)》
- 《[本地提取.config](https://github.com/danshui-git/shuoming/blob/master/yijianconfig.md)》
- 《[patch补丁制作](https://github.com/danshui-git/shuoming/blob/master/buding.md)》
- 《[编译时增加NTFS格式盘挂载](https://github.com/danshui-git/shuoming/blob/master/NTFS%E6%A0%BC%E5%BC%8F%E4%BC%98%E7%9B%98%E6%8C%82%E8%BD%BD)》
- 《[拉取插件命令和各种命令的简单介绍](https://github.com/danshui-git/shuoming/blob/master/ming.md)》
- 《[Telegram和pushplus的密匙获取方式](https://github.com/danshui-git/shuoming/blob/master/bot.md)》
- 《[X86编译时选固件格式和设置overlay空间容量](https://github.com/danshui-git/shuoming/blob/master/overlay.md)》
- 《[编译出错时查看日志方法](https://github.com/danshui-git/shuoming/blob/master/errors.md)》
- 《[修改文件跟删除仓库](https://github.com/danshui-git/shuoming/blob/master/%E5%88%A0%E9%99%A4%E5%92%8C%E4%BF%AE%E6%94%B9%E6%96%87%E4%BB%B6.md)》

#
#
- # 捐赠
- 如果你觉得此项目对你有帮助，请请我喝一杯82年的凉白开，感谢！

-微信-
# <img src="https://github.com/danshui-git/shuoming/blob/master/doc/weixin4.png" />
#
#
- # 鸣谢
> [`coolsnowwolf`](https://github.com/coolsnowwolf/lede.git)
> [`Lienol`](https://github.com/Lienol/openwrt.git)
> [`ctcgfw`](https://github.com/project-openwrt/openwrt.git)
> [`P3TERX`](https://github.com/P3TERX/Actions-OpenWrt)
> [`tuanqing`](https://github.com/tuanqing/mknop)
> [`Hyy2001X`](https://github.com/Hyy2001X/AutoBuild-Actions)
> [`ophub`](https://github.com/ophub/amlogic-s9xxx-openwrt)
> [`nicholas-opensource`](https://github.com/nicholas-opensource/OpenWrt-Autobuild)
> [`hx210`](#/README.md)
> [`hyird`](#/README.md)
> [`World Peace`](#/README.md)
> [`感谢各位大佬提供的各种各样的插件`](#/README.md)
