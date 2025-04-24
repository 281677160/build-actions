


---

<details>
<summary>🆘各种教程</summary>
<br>
<br />
<br>

《[github actions编译教程](https://github.com/danshui-git/shuoming#%E7%BC%96%E8%AF%91%E6%95%99%E7%A8%8B)》

《[Amlogic、Rockchip系列固件打包设置教程](https://github.com/danshui-git/shuoming/blob/master/Amlogic.md)》

《[在线更新固件插件说明](https://github.com/danshui-git/shuoming/blob/master/%E5%AE%9A%E6%97%B6%E6%9B%B4%E6%96%B0%E6%8F%92%E4%BB%B6.md)》

<br />
</details>

---

<details>
<summary>🆙更新说明（2025年4月24号）</summary>

<br>

  2025年4月24号

 1、修复了23.05以下不能编译的NaiveProxy问题


 ---
  2025年4月23号

 1、把脚本重新整理了一遍，23.05或者以下的版本编译passwall和ssr-plus都强制使用shadowsocks-libev编译了，使用Shadowsocks_Rust因为passwall更新太快，源码跟不上会导致编译失败，23.05以下版本强制去掉NaiveProxy
 
 2、diy-part.sh文件内容有小修改，别直接复制
 
 3、不想用这个仓库编译的话，可以使用 https://github.com/281677160/actions-openwrt 此仓库，原汁原味，啥都没修改过的


 ---
  2025年3月30号

 1、去除选择服务器CPU编译的操作，测试了一下，现在可以看到的CPU基本都全是AMD的一个型号了，如果使用了选择服务器CPU编译的话，会一直循环寻找CPU当中，不会进行编译了


 ---

  2025年3月26号

 1、将《[padavanonly](https://github.com/padavanonly/immortalwrt-mt798x-24.10)》和《[hanwckf](https://github.com/hanwckf/immortalwrt-mt798x)》的仓库整合成Mt798x的了
 
 2、选择hanwckf-21.02分支编译是[hanwckf](https://github.com/hanwckf/immortalwrt-mt798x)作者仓库的openwrt-21.02分支，选择其他分支编译的是[padavanonly](https://github.com/padavanonly/immortalwrt-mt798x-24.10)作者的仓库，均为mtk闭源网卡驱动
 
 3、openwrt-23.05和hanwckf-21.02的【mt7981和mt7986】可以编译机型文件均拉取于[padavanonly](https://github.com/padavanonly/immortalwrt-mt798x-24.10)作者仓库的2410分支，也就是说【mt7981和mt7986】类的机型都同时同步与[padavanonly](https://github.com/padavanonly/immortalwrt-mt798x-24.10)作者的2410分支.

 ---
  2025年3月25号

 1、修复个别源码开启 export Enable_IPV6_function="1" 选项编译错误，个别源码编译选择ipv6会缺依赖造成编译错误
 
 2、修复个别源码开启 export Enable_IPV4_function="1"  选项编译错误，个别源码是不能完整清除IPV6来编译的，会造成编译错误
 
 3、修复低版本源码编译出现 WARNING: Makefile 'package/feeds/danshui/v2raya/Makefile' has a dependency on 'kmod-nft-tproxy', which does not exist 错误

 ---

  2025年3月21号

 修复脚本长期没更新导致的各种问题，增加 https://github.com/padavanonly/immortalwrt-mt798x-24.10 此仓库源码

 ---

  2024年1月14号

 修复私库不能启动编译和同步更新上游仓库问题，要注意的是如果你把仓库设置成私库，在线更新固件功能是不可以使用的，因为私库是检测不到的，就没办法下载您在私库releases的固件
 
 ---
 
  2023年9月2号

 增加<释放Ubuntu磁盘空间>解决最近因为服务器空间不足而编译失败的问题
 
 ---
 
  2023年6月16号
 
 修复个别源码不能编译N1固件的问题
 
 有些源码的【armvirt】文件夹已经改成了【armsr】，机型文件也跟着改变的，查看源码文件夹在对应源码分支的[target/linux]里面查看，要么有【armvirt】，要么就是【armsr】
 
 以前的机型文件一般为：
 ````
CONFIG_TARGET_armvirt=y
CONFIG_TARGET_armvirt_64=y
CONFIG_TARGET_armvirt_64_Default=y
 ````
 
 现在的机型文件有些改为：
 ````
CONFIG_TARGET_armvirt=y
CONFIG_TARGET_armvirt_64=y
CONFIG_TARGET_armvirt_64_DEVICE_generic=y
 ````
 
 如果源码文件为【armsr】的，机型文件一般为：
 ````
CONFIG_TARGET_armsr=y
CONFIG_TARGET_armsr_armv8=y
CONFIG_TARGET_armsr_armv8_DEVICE_generic=y
 ````
 
 以上机型文件仅供参考，自己在对应源码SSH连接多看吧
 ---
 
 2023年6月11号
 
 1、修改了清理Actions空间操作记录的时间设置方式，以前是按天来计算的，现在是按分钟计算
 
 2、修改了清理发布固件的操作方式，还是按保留个数计算，默认会自动保留【在线更新的云端】和【Amlogic/Rockchip系列打包的rootfs.tar.gz格式固件】，不被清理的，要清理就手动删除一下（6月11号11点，发现BUG，此清理方式，获取数据的时候，只能获取到前面的30个，如果你仓库的发布超过30个，就不能获取到后面的了，再加上如果你保留的个数超过30个的话，那就一直不会清理任何发布，建议超过30个的，现在保留特定需要的，其他都清理完了，然后在以后的使用当中别让发布个数超过30个就能正常使用了）
 
 4、因为要搭配清理发布操作使用，在线更新的云端名称有改变，重新编译的才能使用，以前编译的检测不到了
 
 5、增加了自动删除，因筛选CPU转换服务器而停止的工作流程
 
 ---

 2023年6月3号
 
 1、每次编译都自动检测一次上游仓库版本，上游有更新的话自动同步上游，同步分小版本和大版本，小版本不会改变您现有机型文件夹，不会改变【diy、files、patches、seed】等文件夹，大版本是直接把上游仓库整个覆盖您现的仓库，不管大小版本更新都会保留备份的，在根目录会多一个【backups】文件夹，里面就是您没更新之前的仓库所有文件，不想要此文件夹的时候直接删除就可以了
 
 2、运行至【检测文件和对比上游版本】此步骤出错，就展开看看是不是同步了上游仓库，还是您仓库缺少了什么文件而停止了
 
 3、diy-part.sh有修改，以前的个别控制都有改过，别拿以前的直接覆盖使用，重新设置一次吧
 
 4、取消了不使用我仓库插件包的选择了，现在必定使用我仓库的插件包，因为我这个仓库是带本地编译的，有这个选择在，要多写很多东西，烦，直接取消
 
 5、现在github删除文件夹都可以直接删除了，所以我以前的删除文件夹操作也取消了，只保留了建立机型文件夹的操作
 
 6、我仓库能编译的源码，对方上游增加或者删除分支，您都可以根据上游自己改变分支号的，比如天灵的源码最近增加了【openwrt-23.05】，您仓库没有的，您可以自己添加上就可以了，或者对方上游删除了什么分支，你编译的时候，拉取源码就会出错，你对应的自己删除该分支号就行了，理论是可以支持所有分支，但是也要该分支可以正常编译才可以的，比如说有些分支太久没更新的，基本的依赖都没改过来，肯定不能编译的，还有些源码增加LUCI编译就出错的
 
 7、修复了，以前在diy-part.sh设置修改我收集的插件包里面的插件名称，修改不了的情况，现在应该随便改了，只要您写的名称准确
 
 8、那些上传网盘之类的，因为此功能的作者没更新仓库源码，基本都失效了，懒的折腾了，我仓库都删除了那些功能了，有懂搞的可以去上传功能的仓库修改修改来用
 
 ---
 
2023年5月13号
 
 1、重新整理了所有源码的插件包，因技术有限，gl-ax1800源码增加不了docker，还有个别源码不能编译ssrplus和passwall的NaiveProxy，个别源码的vssr和istore可以编译成功，但是不能用，还有没有其他插件也存在此问题，等你们测试了
 
 2、gl-ax1800源码的固件不能直接进行转换成Xwrt的固件，安装的时候会出错，然后卡死了，如果你用的是gl-ax1800源码编译的固件要注意，想用Xwrt的固件的固件，就先随便把gl-ax1800源码编译的固件安装成其他任意作者的固件再安装Xwrt的固件
 
 3、把所有源码的主题插件都整理了一遍，因为有些主题太老了，支持不了好多现在新的插件，那些新插件名称在主题错位的还没啥，反正还能看到，能设置，很多主题直接是不显示该插件的存在，或者好多主题名字不一样，其实都是大同小异的主题，所以我那些主题干掉了。（18.06LUCI的主题比较好用的有 luci-theme-argon，luci-theme-design，luci-theme-opentopd，luci-theme-kucat，19.07之后的主题基本没几个可以选了，感谢这些主题作者的辛苦付出）
 
 4、不管源码里面有没有luci-theme-argon,我都替换成jerrykuku大佬的luci-theme-argon主题了
 
 5、自定义设置里面的（export Enable_IPV6_function="0"）、（export Enable_IPV4_function="0"）和（export Create_Ipv6_Lan="0"）只能三选一的开启，如果你都同时开启的话，只会选择启用（export Enable_IPV6_function="1"）
 
 6、每次安装固件完毕，就是跑完码后，该运行的运行，该咋滴咋滴，全部搞定后就会进行重启，跑完码后，如果你使用页面后台进入固件是可以的，但是进入后因为相隔几十秒后(全部东西运行完毕大概是20-30秒,东西多的话时间要增加一点点)会进行重启，所以有些人进入后，修改了东西，没保存设置，因为才几十秒，很快就过去了，来不及按保存，然后造成你以为你设置了东西，但是过一会发现又没设置的情况，因为你没按保存，固件就重启了，应该要等重启后再来慢慢设置，如果请大家发现这个问题的时候莫慌

---

2023年4月22号

1、把autobuild仓库合拼到了这里了，以前拉autobuild仓库的应该都不可以用了，请重新拉取这个仓库吧，以前老的build-actions仓库也要重新拉取新的build-actions仓库使用（请不要继续拉取autobuild仓库使用，这个是我个人使用仓库）
 
2、编译教程全修改一遍了，看教程还不能启动编译的话，我只能说多看几次吧

3、增加了编译源码的选择，同作者源码的源码分支之间可以自由切换编译（每个作者源码的可支持选择什么分支，在settings.ini文件有写明）

4、晶晨系列固件不限制一个源码，理论上可以编译出rootfs.tar.gz包的，应该都可以打包使用，比较常用的有（天灵的openwrt-21.02分支、大雕的master分支、官方的master分支），固件编译跟打包分2次进行，这样免除了打包空间不足，或者编译+打包时间不足的问题，已经编译出了的rootfs.tar.gz可以使用手动启动打包程序，进行多次打包操作。（更新了amlogic和rockchip固件打包设置教程）
 
5、luci-app-oscam插件，云编译，编译不成功，云编译的时候切莫选择此插件，本地编译倒是可以编译成功。
 
6、大雕源码，有些机型编译增加mac80211驱动的时候会编译错误的，如果出现这个情况，自己带上日志找源码作者处理
 
7、我编译仓库里，增加大雕源码【gl-ax1800】分支选择，不是他 https://github.com/coolsnowwolf/lede 源码的分支，是他另外一个仓库 https://github.com/coolsnowwolf/openwrt-gl-ax1800 的源码，看他意思是专门给gl-ax1800路由器准备的，我看了下，也测试了一下，其实就是一个4.14内核的源码，有需要这个内核的朋友，也可以使用这个分支编译

</details>

---

<details>
<summary>✴️本地编译</summary>
<br>
<br />
<br>

《[本地Ubuntu一键编译OpenWrt固件](https://github.com/281677160/bendi)》

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
 [`jerrykuku`](https://github.com/jerrykuku/luci-theme-argon)
