---
layout: post
title: DIY 属于自己的 Ubuntu 7.10
date: 2007-12-18
tags: ["diy","linux","ubuntu","设置"]
---

默认安装的ubuntu过于臃肿，这次就先只安装个command-line system，再DIY。下面我们就开始吧。
1,用Alternate install CD启动系统，<span style="color: #ff0000;">一定要 <span style="color: #0000ff;">F2</span> 设置语言为简体中文</span>，否则安装后还得设置中文locale，安装菜单中选择"<span style="color: #ff6600;">Install a command-line system</span>"，然后跟正常安装一样。
2,安装后得到一个只有命令行的系统，确保能正常上网。
<span style="color: #800000;">sudo nano /etc/network/interfaces</span>

<!--more-->

修改为以下内容

<span style="color: #0000ff;">auto eth0
iface eth0 inet dhcp</span>

#获取IP地址
<span style="color: #800000;">sudo dhclient eth0</span>
#用restart竟然不行，但先stop再start却可以
<span style="color: #800000;">sudo /etc/init.d/networking stop && sudo /etc/init.d/networking start</span>

接下来安装最基本的X视窗组间。
#设置apt源
<span style="color: #800000;">wget [http://kisa747.googlepages.com/sources.list.tar.gz](http://kisa747.googlepages.com/sources.list.tar.gz)
tar xvfz sources.list.tar.gz
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp sources.list /etc/apt/sources.list
<span style="color: #000000;">#改回sources.lst的默认读写权限</span>
sudo chmod 644 </span><span style="color: #800000;">/etc/apt/sources.list </span>
#系统升级
<span style="color: #800000;">sudo </span><span style="color: #800000;">aptitude</span><span style="color: #800000;"> update && sudo </span><span style="color: #800000;">aptitude</span><span style="color: #800000;"> safe-upgrade</span>
#安装X窗口，gdm，gnome核心组件
<span style="color: #800000;">sudo </span><span style="color: #800000;">aptitude</span><span style="color: #800000;"> install xserver-xorg-core gdm gnome-core compiz-core</span>

<span style="color: #ff0000; font-size: small;">注：</span>
以下是sources.list的内容
`deb http://ubuntu.cn99.com/ubuntu/ gutsy main restricted universe multiverse
deb http://ubuntu.cn99.com/ubuntu/ gutsy-security main restricted universe multiverse
deb http://ubuntu.cn99.com/ubuntu/ gutsy-updates main restricted universe multiverse
deb http://ubuntu.cn99.com/ubuntu/ gutsy-proposed main restricted universe multiverse
deb http://ubuntu.cn99.com/ubuntu/ gutsy-backports main restricted universe multiverse
deb-src http://ubuntu.cn99.com/ubuntu/ gutsy main restricted universe multiverse
deb-src http://ubuntu.cn99.com/ubuntu/ gutsy-security main restricted universe multiverse
deb-src http://ubuntu.cn99.com/ubuntu/ gutsy-updates main restricted universe multiverse
deb-src http://ubuntu.cn99.com/ubuntu/ gutsy-proposed main restricted universe multiverse
deb-src http://ubuntu.cn99.com/ubuntu/ gutsy-backports main restricted universe multiverse
deb http://ubuntu.cn99.com/ubuntu-cn/ gutsy main restricted universe multiverse`

2,这样下来基本的X窗口已经可以了启动了，执行 <span style="color: #ff0000;">startx</span> 命令进入桌面。接着就可以在X视窗下的终端执行以下命令了：
<span style="color: #800000;">startx</span>
#接着就可以在X视窗下的终端执行以下命令了。
#安装apt的gui前端 <span style="color: #0000ff;">新立得</span> 和 fcitx中文输入法 ，并将fcitx设置为默认输入法。
#fcitx设置参见我的另一篇文章 [我的Fcitx美化方案](http://www.kisa747.com/fcitx-beautification-programs.html)
<span style="color: #800000;">sudo </span><span style="color: #800000;">aptitude</span><span style="color: #800000;"> install synaptic fcitx
</span><span style="color: #800000;">sudo</span> <span style="color: #800000;">im-switch -s fcitx -z default</span>
<span style="color: #800000;"> im-switch -s fcitx -z default</span>
#影音方案，exaile会自动把需要的gstreamer依赖包装上，这样直接就能播放mp3了
#[更换了音乐播放器──Exaile](http://www.kisa747.com/change-to-exaile.html) 这里有关于exaile音乐播放器的简单介绍
#再装个<span style="color: #000000;">gstreamer0.10-ffmpeg就连wma也能播放了，而且也让totem能播放wmv，dvd</span>
#我电脑上的影音文件格式只有mp3，wma，rmvb，rm，wmv，只要能播放这几种种媒体格式就可以了
#现在才发现Ubuntu下竟一条命令就解决了我所有的影音播放。apt就是牛！
<span style="color: #800000;">sudo aptitude install exaile smplayer w32codecs</span> <span style="color: #800000;">gstreamer0.10-ffmpeg</span>
#firefox中文包
<span style="color: #800000;">sudo aptitude install mozilla-firefox-locale-zh-cn </span>
#受限驱动管理器，用它图形安装显卡驱动
#我的ati显卡也可以用 <span style="color: #ff0000;">sudo aptitude install xorg-driver-fglrx</span>
<span style="color: #800000;">sudo aptitude install restricted-manager</span>
#自动挂载U盘等可移动介质管理工具，但会自动安装totem，gthumb等好多软件，不过有了它挺方便的
<span style="color: #800000;">sudo aptitude install gnome-volume-manager</span>
#编辑menu bar的小工具
<span style="color: #800000;">sudo aptitude install alacarte</span>
#pdf阅读器+中文支持
<span style="color: #800000;">sudo aptitude install evince xpdf-chinese-simplified </span>
#归档文件管理器 + rar/7z 支持
<span style="color: #800000;">sudo aptitude install file-roller rar p7zip</span>
#类似windows记事本的文本编辑器
<span style="color: #800000;">sudo aptitude install leafpad</span>
#聊天工具，基于GTK
#eva基于qt，lumaqq要java环境，所以就干脆用pidgin
<span style="color: #800000;">sudo aptitude install pidgin</span>
#包含屏幕截图等一些工具
<span style="color: #800000;">sudo aptitude install gnome-utils</span>
#美观一点（包含clearlook在内几个主题），主要是它还能自动安装gtk包
<span style="color: #800000;">sudo aptitude install gnome-themes</span>
#基于文本的设置服务的工具
#使用及服务配置请参考 [ubuntu简单优化](http://www.kisa747.com/ubuntu-simple-optimization.html)
<span style="color: #800000;">sudo aptitude install sysv-rc-conf</span>
#就是ubuntu下那个添加删除程序
<span style="color: #800000;">sudo aptitude install gnome-app-install</span>
#图形化的安装deb包的工具，其实用dpkg命令就足够了
<span style="color: #800000;">sudo aptitude install gdebi
<span style="color: #000000;">#系统监视器</span>
</span><span style="color: #800000;">sudo aptitude install gnome-system-monitor</span>
<span style="color: #000000;">#</span>编辑GConf配置数据库的图形界面编辑器
#设置参考       [gconf-editor 的设置](http://www.kisa747.com/gconf-editor-config.html)
<span style="color: #800000;">sudo aptitude install gconf-editor
<span style="color: #000000;">#星际译王+简明英汉词库</span>
</span><span style="color: #800000;">sudo aptitude install stardict-cdict-gb stardict</span>
#nautilus右键扩展
#添加<span style="color: #0000ff;"><span style="color: #000000;">"以管理员打开"+</span></span><span style="color: #0000ff;"><span style="color: #000000;">"Open in terminal</span></span>"
#用脚本也可以做到 [nautilus-scripts.tar.gz](http://kisa747.googlepages.com/nautilus-scripts.tar.gz)
#下载解压拷到 <span style="color: #0000ff;"><span style="color: #000000;">~/.gnome2/nautilus-scripts，然后在此目录下运行命令 chmod u+x *</span></span>
<span style="color: #800000;">sudo aptitude install nautilus-gksu nautilus-open-terminal</span>

3,美化grub

<span style="color: #800000;">wget [http://kisa747.googlepages.com/grubuntu.xpm.gz](http://kisa747.googlepages.com/grubuntu.xpm.gz)
sudo cp ./grubuntu.xpm.gz /boot
sudo cp /boot/grub/menu.lst /boot/grub/menu.lst.bak
sudo gedit /boot/grub/menu.lst</span>

在"timeout"项下面添加下面一段，其中 <span style="color: #ff0000;">(hd0,7)</span> 为对应的 /boot 所对应的分区

<span style="color: #0000ff;">splashimage=(hd0,7)/boot/grubuntu.xpm.gz</span>

grub的背景被换成如下

![](4059762122_f18711e6f6_o.jpg)

4,一个mac风格的的鼠标样式主题，解压后拷到 ~/.icons 文件夹下就能使用了

<span style="color: #800000;">wget</span> [http://kisa747.googlepages.com/aquadiz.tar.gz](http://kisa747.googlepages.com/aquadiz.tar.gz)

下面就是截图中浅绿色的边框主题，解压后拷到 ~/.themes 文件夹下就能使用了

<span style="color: #800000;">wget</span> [http://kisa747.googlepages.com/Clearlooks-green.tar.gz](http://kisa747.googlepages.com/Clearlooks-green.tar.gz)

一个类似windows的边框主题 <span style="color: #ff0000;">zune </span>，解压后拷到 ~/.themes 文件夹下就能使用了

<span style="color: #800000;">wget </span>[http://kisa747.googlepages.com/zune.tar.gz](http://kisa747.googlepages.com/zune.tar.gz)
![](4059005105_a665631988_o.gif)
把雅黑字体拷到 ~/icons 文件夹下，运行命令 <span style="color: #800000;">fc-cache -f </span>刷新下字体缓存，然后不用任何设置现在字体就十分漂亮！
效果图：
![](4058997731_8d155a8e96_o.jpg)