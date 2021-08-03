# 择要

- [Lede_source](https://github.com/coolsnowwolf/lede)，Luci版本=18.06、内核版本=5.10
- [Lienol_source](https://github.com/Lienol/openwrt/tree/19.07)，Luci版本=17.01、内核版本=4.14
- [Mortal_source](https://github.com/immortalwrt/immortalwrt/tree/openwrt-21.02)，Luci版本=21.02、内核版本=5.4
- [openwrt_amlogic](https://github.com/coolsnowwolf/lede)，N1和晶晨系列CPU盒子专用（Luci版本=18.06、内核版本=5.4）

- openwrt_amlogic文件夹，编译S905x3, S905x2, S922x, S905x, S905d, s912自动打包您所需的固件《[说明](https://github.com/danshui-git/shuoming/blob/master/Amlogic.md)》

- 源码已直接打入了常用插件了，请先确定我仓库有没有您需要的插件，再来自行添加所需插件 【[插件包](https://github.com/281677160/openwrt-package)】

- 启动教程视频，mp4格式，需要的自己下载。《[谷歌云](https://drive.google.com/drive/folders/1WEUtVfiVtR5lyG8aX4RcDGdUPV6uMlxt?usp=sharing)》、《[百度（密码：apek）](https://pan.baidu.com/s/1RVi4nN8Y1ak9LTWzhV5bSQ)》、《[微云](https://share.weiyun.com/33SgJdCO)》

- 本仓库是由编译主体、外加扩展、插件包，三部分组成的，AutoBuild-OpenWrt这个仓库就是主体，其他的外加扩展跟插件包你们是不需要理会的，每次你们启动主体编译的时候就会下载外加扩展跟插件包，这样就可以做到每次编译都同步我最新仓库的目的，一般情况下，我没修改主体的build-openwrt.yml文件，你们是不需要重复拉取我仓库来更新仓库的，如果主体文件有改变需要你们更新仓库的时候，运行至公告那里就会出错了，这个是我特意弄的，如果出现在公告那里就出错不能继续运行下去，意思就是要更新仓库了，怎么更新法，一般我都会在公告那里写，就算运行至公告错误，也可以点击公告展开来看见公告内容，无非就是复制一下build-openwrt.yml文件内容吧，如果连带build里面的文件也有修改的话，就要重新拉取仓库了。

- 《[如何在本地Ubuntu一键无脑编译](https://github.com/danshui-git/shuoming/blob/master/bendi.md)》
 
- 《[把定时自动在线更新插件编译进固件的说明](https://github.com/danshui-git/shuoming/blob/master/%E5%AE%9A%E6%97%B6%E6%9B%B4%E6%96%B0%E6%8F%92%E4%BB%B6.md)》

- 《[Telegram聊天吹水群](https://t.me/heiheiheio)》- 《[Telegram中文设置方法](https://github.com/danshui-git/shuoming/blob/master/tele.md)》

```
AdGuardHome更新核心的时候如果遇见‘A task is already running.’这个显示的话，请用命令来更新核心，
op自带的ttyd或者用putty连接OP都可以，用了命令后会一直使用命令到更新到核心为止的，一般情况都能更新到核心。

 命令是：while ! bash /usr/share/AdGuardHome/update_core.sh ; do sleep 2 ; done ; echo succeed
```

#
## 编译教程：
### - 以下的说明教程都是在我另外的仓库的，查看说明时候就跳转到另外仓库了，浏览器回退就会回来，别拉取到我说明的仓库，注意了！
#
- 1、`注册及登录github账号，github个别地区或网络已筑墙,请自备梯子`《[注册链接](https://github.com)》
#
- 2、`拉取我的仓库到你的仓库`《[拉取仓库教程](https://github.com/danshui-git/shuoming/blob/master/1%E6%8B%89%E5%8F%96%E4%BB%93%E5%BA%93.md)》
#
- 3、[必须了解](https://github.com/danshui-git/shuoming/blob/master/%E7%AE%80%E5%8D%95%E4%BB%8B%E7%BB%8D%E6%96%B0%E8%84%9A%E6%9C%AC.md)的脚本简单介绍《[脚本简单介绍](https://github.com/danshui-git/shuoming/blob/master/%E7%AE%80%E5%8D%95%E4%BB%8B%E7%BB%8D%E6%96%B0%E8%84%9A%E6%9C%AC.md)》
#
- 4、`选择要编译的源码跟机型`《[教程](https://github.com/danshui-git/shuoming/blob/master/%E9%80%89%E6%8B%A9%E6%9C%BA%E5%9E%8B.md)》
#
- 5、设置好要编译的机型后，在build文件夹--你要编译的对应机型文件夹（跟第4步修改的机型一样的文件夹）里的【diy-part.sh】修改登录IP，好等编译完成安装后顺利登录openwrt《[修改ip教程](https://github.com/danshui-git/shuoming/blob/master/ip.md)》
#
- 6、修改好ip后，根据个人需求打开或者关闭各功能，开关控制在build文件夹--你要编译的对应机型文件夹（跟第4步修改的机型一样的文件夹）里的【settings.ini】设置《[各开关控制教程](https://github.com/danshui-git/shuoming/blob/master/kaiguan.md)》
#
- 7、第4、5、6步骤都完成后，就可以启动编译了《[[启动教程](https://github.com/danshui-git/shuoming/blob/master/%E6%89%8B%E5%8A%A8%E5%BC%80%E5%A7%8B.md)]》,启动编译的时候也可以顺手打开SSH连接的，在点击绿色按钮启动编译之前设置好SSH顺带启动就可以，请认真看教程的第二张图片
#
- 8、`SSH远程连接服务器配置固件`《[SSH连接教程](https://github.com/danshui-git/shuoming/blob/master/3SSH%E8%BF%9E%E6%8E%A5%E8%AF%B4%E6%98%8E.md)》，SSH远程默认关闭的，需要打开的请在build文件夹里面的对应机型文件夹的‘settings.ini’设置，或者按钮启动编译的时候顺手打开
#
- 9、`配置固件`《[youtube大神的固件配置视频教程](https://www.youtube.com/watch?v=jEE_J6-4E3Y&t=24s)》《[恩山大神xtwz整理的插件中文对照](https://www.right.com.cn/forum/thread-3682029-1-1.html)》，《[youtube大神的网卡、无线网卡配置视频教程](https://www.youtube.com/watch?v=X9v6Nd3wxkk)》，放视频在这里只是给大家了解一下怎么修改机型跟选择插件而已，不是叫大家对着视频照着干，千万不要这样做，你就看会什么东西在哪个位置就好了。
#
- 10、`完成编译，下载固件`《[固件下载教程](https://github.com/danshui-git/shuoming/blob/master/4%E5%9B%BA%E4%BB%B6%E4%B8%8B%E8%BD%BD.md)》
#
- 11、`安装固件`，安装固件时出现“Please press Enter to activate this console”就表示安装好了，出现这个就不会跑码的，稍等2-3分钟就可以在浏览器输入IP进入openwrt后台了
- 如果会跑码，就耐心等待跑码完成，大概2-3分钟就能跑完的
#
- 12、`保存编译配置`，编译固件之前打开‘`SSH连接服器配置固件`’跟‘`上传【.config】配置文件在github空间`’。</br>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;编译的时候SSH连接服务器修改好机型、插件跟其他应用。</br>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;编译成功后会有固件跟.config配置文件的，下载.config配置文件后，解压得到一个【config.txt】文件。</br>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;双击打开，把里面的内容都复制，然后覆盖对应机型.config里面原来的内容，这样就会保存你的配置了。</br>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;下次编译在不修改配置的情况下就不需要再次打开SSH了，那就可以使用定时编译功能，或者手机启动编译。</br>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;本地提取.config配置文件覆盖进去也可以，《[本地提取教程](https://github.com/danshui-git/shuoming/blob/master/yijianconfig.md)》。
#
- 13、
《[增加编译机型方法](https://github.com/danshui-git/shuoming/blob/master/jlck.md)》
《[定时触发编译说明](https://github.com/danshui-git/shuoming/blob/master/%E5%AE%9A%E6%97%B6%E7%BC%96%E8%AF%91%E8%AF%B4%E6%98%8E.md)》
《[修改跟删除](https://github.com/danshui-git/shuoming/blob/master/%E5%88%A0%E9%99%A4%E5%92%8C%E4%BF%AE%E6%94%B9%E6%96%87%E4%BB%B6.md)》
《[本地提取.config](https://github.com/danshui-git/shuoming/blob/master/yijianconfig.md)》
《[IPV4/IPV6选择](https://github.com/danshui-git/shuoming/blob/master/%E5%85%B6%E4%BB%96%E8%AF%B4%E6%98%8E.md)》
《[固件包减负](https://github.com/danshui-git/shuoming/blob/master/%E5%9B%BA%E4%BB%B6%E6%96%87%E4%BB%B6%E5%A4%B9%E6%95%B4%E7%90%86.md)》
《[banner的说明](https://github.com/danshui-git/shuoming/blob/master/banner%E8%AF%B4%E6%98%8E.md)》
《[patch补丁制作](https://github.com/danshui-git/shuoming/blob/master/buding.md)》
《[NTFS优盘挂载](https://github.com/danshui-git/shuoming/blob/master/ntfs.md)》
《[各种命令的简单介绍](https://github.com/danshui-git/shuoming/blob/master/ming.md)》
《[微信通知跟自动发布固功能密匙获取跟使用教程](https://github.com/danshui-git/shuoming/blob/master/ms.md)》
《[Telegram机器人推送信息教程](https://github.com/danshui-git/shuoming/blob/master/bot.md)》
《[编译时设置overlay空间容量](https://github.com/danshui-git/shuoming/blob/master/overlay.md)》
《[编译出错时查看日志方法](https://github.com/danshui-git/shuoming/blob/master/errors.md)》

#

#
#
- ## 鸣谢
- 感谢[coolsnowwolf](https://github.com/coolsnowwolf/lede.git)大神提供的openwrt源码
- 感谢[Lienol](https://github.com/Lienol/openwrt.git)大神提供的openwrt源码
- 感谢[ctcgfw](https://github.com/project-openwrt/openwrt.git)大神提供的openwrt源码
- 感谢[P3TERX](https://github.com/P3TERX/Actions-OpenWrt)大神提供的一键编译脚本
- 感谢[garypang13](https://github.com/garypang13/Actions-OpenWrt)大神提供的一键编译脚本
- 感谢[tuanqing](https://github.com/tuanqing/mknop)大神提供的一键打包脚本
- 感谢[Hyy2001X](https://github.com/Hyy2001X/AutoBuild-Actions)大神，定时自动升级固件来源于此大神
- 感谢[ophub](https://github.com/ophub/amlogic-s9xxx-openwrt)大神提供Amlogic系列CPU机型的一键打包脚本
- 感谢[hyird](https://github.com/hyird/Action-Openwrt)大神，是这仁兄告诉我有patch补丁这回事的
- 还有要感谢<a href="#/README.md">World Peace</a>仁兄，这个仁兄是在P3TERX大神的Telegram群认识的，我刚接触云编译时告诉我使用files修改设置的，非常感谢!
- 感谢微软免费提供的编译平台
- 感谢各位大佬提供的各种各样的插件
- 感谢各位帮助过我的人，祝福各位好人一生平安

