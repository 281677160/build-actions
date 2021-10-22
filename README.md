- 《[Telegram聊天吹水群](https://t.me/heiheiheio)》- 《[Telegram中文设置方法](https://github.com/danshui-git/shuoming/blob/master/tele.md)》

- # 择要
---
- 2021/10/22号更新了最新获取.config方法，和修改了最新的一键同步上游仓库，更人性化
- 《[全新在线获取.config配置文件教程](https://github.com/danshui-git/shuoming/blob/master/config.md)》
- 《[全新一键保存配置同步上游仓库和清理仓库说明](https://github.com/danshui-git/shuoming/blob/master/chongxinfork.md)》
- 新手教程全新整理了一下，应该更容易看懂了
- 最新仓库修改了获取.config配置文件和保存配置同步上游仓库的方式，所以在.github/workflows文件里面的（build-openwrt.yml和make-menuconfig.yml）文件名是不能修改的，切记！
- 保持 build-openwrt.yml 和 make-menuconfig.yml 就好，反正这个文件名字也应该没多少人闲地蛋痛去修改吧，就是说一下比较好
---
- # 介绍
---
- [Lede_source](https://github.com/coolsnowwolf/lede)，Luci版本=18.06、内核版本=5.4
- [Lienol_source](https://github.com/Lienol/openwrt/tree/19.07)，Luci版本=17.01、内核版本=4.14
- [Mortal_source](https://github.com/immortalwrt/immortalwrt/tree/openwrt-21.02)，Luci版本=21.02、内核版本=5.4
- [openwrt_amlogic](https://github.com/coolsnowwolf/lede)，N1和晶晨系列CPU盒子专用（Luci版本=18.06、内核版本=5.4）

- openwrt_amlogic文件夹，编译S905x3, S905x2, S922x, S905x, S905d, s912《[自动打包您所需的固件说明](https://github.com/danshui-git/shuoming/blob/master/Amlogic.md)》

- 源码已直接加入了常用插件了，您要自己拉取插件之前，请先看看【[常用插件列表](https://github.com/danshui-git/shuoming/blob/master/%E5%90%8D%E7%A7%B0.md)】，是否带了你的插件，或者是相同功能的插件。【[插件包](https://github.com/281677160/openwrt-package)】

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
- 1、`注册及登录github账号，github个别地区或网络已筑墙,请自备梯子`《[注册链接](https://github.com)》
#
- 2、`拉取我的仓库到你的github帐号`《[拉取仓库教程](https://github.com/danshui-git/shuoming/blob/master/1%E6%8B%89%E5%8F%96%E4%BB%93%E5%BA%93.md)》
#
- 3、`获取密匙然后在编译仓库使用密匙，非必要步骤，但是有密匙就方便很多，推荐获取`《[仓库密匙获取跟使用](https://github.com/danshui-git/shuoming/blob/master/jm.md)》
#
- 4、`必须了解的脚本简单介绍`《[脚本简单介绍](https://github.com/danshui-git/shuoming/blob/master/%E7%AE%80%E5%8D%95%E4%BB%8B%E7%BB%8D%E6%96%B0%E8%84%9A%E6%9C%AC.md)》
#
- 5、`选择要编译的源码文件`《[选择编译源码教程](https://github.com/danshui-git/shuoming/blob/master/%E9%80%89%E6%8B%A9%E6%9C%BA%E5%9E%8B.md)》
#
- 6、设置好要编译的机型后，在build文件夹--你要编译的对应源码文件夹（跟第4步修改的源码文件一样的文件夹名称）里的【diy-part.sh】修改登录IP(页面后台管理地址)，好等编译完成安装后顺利登录openwrt《[修改ip教程](https://github.com/danshui-git/shuoming/blob/master/ip.md)》
#
- 7、修改好ip后，根据个人需求打开或者关闭各功能，开关控制在build文件夹--你要编译的对应源码文件夹（跟第4步修改的源码文件一样的文件夹名称）里的【settings.ini】设置《[各开关控制教程](https://github.com/danshui-git/shuoming/blob/master/kaiguan.md)》
#
- 8、获取.config配置文件，分《[在线获取.config配置文件教程](https://github.com/danshui-git/shuoming/blob/master/config.md)》和《[本地获取.config](https://github.com/danshui-git/shuoming/blob/master/yijianconfig.md)》两种方法，您喜欢什么样的都行，不管什么获取方式，您一定要确保你获取到的配置文件内容已经覆盖到对应源码文件夹的.config里面。（提示：因github风控原因，编译跟获取.config文件要分开搞）
#
- 9、第5、6、7、8步骤都完成后，如果您在第 8 步骤没设置密匙没开启.config有变化就自动触发编译或者是本地获取的配置文件的话，就手动启动编译《[[启动教程](https://github.com/danshui-git/shuoming/blob/master/%E6%89%8B%E5%8A%A8%E5%BC%80%E5%A7%8B.md)]》
#
- 10、`完成编译，下载固件`《[固件下载教程](https://github.com/danshui-git/shuoming/blob/master/4%E5%9B%BA%E4%BB%B6%E4%B8%8B%E8%BD%BD.md)》
#
- 11、`安装固件`，安装固件时出现“Please press Enter to activate this console”就表示安装好了，出现这个就不会跑码的，稍等2-3分钟就可以在浏览器输入IP进入openwrt后台了
- 如果会跑码，就耐心等待跑码完成，大概2-3分钟就能跑完的
#
- 12、下次编译，在不改变.config配置文件的情况下，就不需要再次获取了，直接启动编译就可以了，不改变配置的话，手机都可以启动编译
#
- 13、
- 《[仓库密匙获取跟使用](https://github.com/danshui-git/shuoming/blob/master/jm.md)》
- 《[增加编译机型的方法](https://github.com/danshui-git/shuoming/blob/master/jlck.md)》
- 《[定时触发编译说明](https://github.com/danshui-git/shuoming/blob/master/%E5%AE%9A%E6%97%B6%E7%BC%96%E8%AF%91%E8%AF%B4%E6%98%8E.md)》
- 《[一键保存配置同步上游仓库和清理仓库说明](https://github.com/danshui-git/shuoming/blob/master/chongxinfork.md)》
- 《[IPV4/IPV6选择](https://github.com/danshui-git/shuoming/blob/master/%E5%85%B6%E4%BB%96%E8%AF%B4%E6%98%8E.md)》
- 《[固件包减负](https://github.com/danshui-git/shuoming/blob/master/%E5%9B%BA%E4%BB%B6%E6%96%87%E4%BB%B6%E5%A4%B9%E6%95%B4%E7%90%86.md)》
- 《[banner的说明](https://github.com/danshui-git/shuoming/blob/master/banner%E8%AF%B4%E6%98%8E.md)》
- 《[本地提取.config](https://github.com/danshui-git/shuoming/blob/master/yijianconfig.md)》
- 《[patch补丁制作](https://github.com/danshui-git/shuoming/blob/master/buding.md)》
- 《[编译时增加NTFS格式盘挂载](https://github.com/danshui-git/shuoming/blob/master/NTFS%E6%A0%BC%E5%BC%8F%E4%BC%98%E7%9B%98%E6%8C%82%E8%BD%BD)》
- 《[各种命令的简单介绍，包括拉取插件命令](https://github.com/danshui-git/shuoming/blob/master/ming.md)》
- 《[微信推送和pushplus推送信息，密匙获取跟使用](https://github.com/danshui-git/shuoming/blob/master/ms.md)》
- 《[Telegram机器人推送信息教程](https://github.com/danshui-git/shuoming/blob/master/bot.md)》
- 《[X86编译时选固件格式和设置overlay空间容量](https://github.com/danshui-git/shuoming/blob/master/overlay.md)》
- 《[编译出错时查看日志方法](https://github.com/danshui-git/shuoming/blob/master/errors.md)》
- 《[修改文件跟删除仓库](https://github.com/danshui-git/shuoming/blob/master/%E5%88%A0%E9%99%A4%E5%92%8C%E4%BF%AE%E6%94%B9%E6%96%87%E4%BB%B6.md)》

#

#
#
- ## 鸣谢
- [coolsnowwolf](https://github.com/coolsnowwolf/lede.git)
- [Lienol](https://github.com/Lienol/openwrt.git)
- [ctcgfw](https://github.com/project-openwrt/openwrt.git)
- [P3TERX](https://github.com/P3TERX/Actions-OpenWrt)
- [tuanqing](https://github.com/tuanqing/mknop)
- [Hyy2001X](https://github.com/Hyy2001X/AutoBuild-Actions)
- [ophub](https://github.com/ophub/amlogic-s9xxx-openwrt)
- [nicholas-opensource](https://github.com/nicholas-opensource/OpenWrt-Autobuild)
- [hx210](https://github.com/hx210/build-actions)
- <a href="#/README.md">hyird</a>
- <a href="#/README.md">World Peace</a>
- [github平台](https://github.com/)
- <a href="#/README.md">感谢各位大佬提供的各种各样的插件</a>
- <a href="#/README.md">感谢各位帮助过我的人，祝福各位好人一生平安</a>

