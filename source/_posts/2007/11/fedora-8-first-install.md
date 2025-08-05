---
layout: post
title: Fedora 8 初装手记
date: 2007-11-14
tags: ["fedora","linux","linux","安装"]
---

1，将当前用户加入sudoer组中，以根用户运行

<span style="color: #800000;">echo 'kisa747 ALL=(ALL) ALL' >> /etc/sudoers</span>

其中  kisa747  是我当前使用的用户名

<!--more-->

2，设置yum
安装 yum-fastestmirror  插件

<span style="color: #800000;">sudo yum install yum-fastestmirror</span>

安装图形化的yum

<span style="color: #800000;">sudo yum install yumex</span>

使用livna软件仓库

http://rpm.livna.org/livna-release-8.rpm

下载后并安装就可以了

3，然后对系统进行整体的升级

<span style="color: #800000;">sudo yum update</span>

4，安装对应的显卡驱动，我的机子是ati的
<span style="color: #800000;">sudo yum install kmod-fglrx</span>

nvidia驱动安装

<span style="color: #800000;">yum -y install kmod-nvidia</span>

5,Fedora 8的firefox的字体大小总比gnome设置的小一些, 而且模糊不清
在firefox的地址栏里输入 about:config
layout.css.dpi 的值由原来的-1设置为0

6，配置多媒体

安装audacious
<span style="color: #800000;">sudo yum install audacious audacious-plugins-nonfree-mp3 audacious-plugins-nonfree-wma</span>

配置totem

<span style="color: #800000;">sudo yum install gstreamer-ffmpeg gstreamer-plugins-bad gstreamer-plugins-ugly</span>

也可以使用totem－xine替换tetem
<span style="color: #800000;">sudo yum remove totem
sudo yum install totem-xine</span>

安装mplayer
<span style="color: #800000;">sudo yum install mplayer mplayer-gui</span>

下载并安装mplayer的解码器

http://ftp.gwdg.de/pub/linux/misc/packman/suse/10.2/i586/w32codec-all-20071007-0.pm.1.i586.rpm

7,安装rar支持
<span style="color: #800000;">sudo yum install unrar</span>

8，关掉不需要的服务

点击 系统－管理－服务  ，如果不想下次开机启动某个服务，把服务前面的 √ 选掉就可以了。

ConsoleKit Fedota 的新功能，如果你想要使用这个新功能就开着，反之关掉吧。
anacron atd              crond
这是一些调试程序的后台服务，一般的桌面用户可以把anacron, atd关了，如果你打算常时间开机，那就把crond打开。 建议始终把crond开着。
auditd
用于存放内核生成的系统审查记录，这些记录会被一些程序使用。特别是对于SELinux用户来说，还是开着吧。
avahi-daemon
主要用于Zero&nbspConfiguration&nbspNetworking ，关吧，一般无用。
bluetooth
蓝牙相关，无蓝牙者，关关关。
btseed,&nbspbttrack
BT相关，无法用BT的，可以关了
capi
ISDN硬件支持，大部分用户可以关了
cpuspeed
CPU 速度调整，如果cpu不支持调速还是关了吧，开着也无用。
cupsd
CUPS打印机支持，没有打印机或者是其他类型打印机的，可以关了
firstboot
Fedora安装完之后的那个用户向导，一般可以关了
gpm
Text&nbspconsole（CTRL-ALT-F1,F2..）鼠标支持，如果你不经常用Text&nbspconsole，可以关了
haldaemon
HAL（Hardware&nbspAbstraction&nbspLayer）服务，开着吧
hplip,&nbsphpiod,&nbsphpssd
HPLIP打印机支持，如果你有开着吧。
httpd
Apache  HTTP网页服务器， 如果你不开发网页，关吧
ip6tables 如果你不用&nbspIPv6，关了