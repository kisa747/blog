---
layout: post
title: Fedora 7 下配置多媒体
date: 2007-06-27
categories: linux
tags: ["fedora","linux","多媒体","播放器"]
---

<div class="cnt">1，安装mplayer及一个前端gmplayer
yum install mplayer mplayer-gui

另一个我用的一个前端smplayer，现在我一直在用它，不过是基于qt的。

<!--more-->[http://smplayer.sourceforge.net](http://smplayer.sourceforge.net)
到页面查找相应的版本下载后安装

下载mplayer的解码器
[http://www1.mplayerhq.hu/MPlayer/releases/codecs/mplayer-codecs-20061022-1.i386.rpm](http://www1.mplayerhq.hu/MPlayer/releases/codecs/mplayer-codecs-20061022-1.i386.rpm)
或是
[ftp://ftp.fedora.cn/pub/fedora-cn/linux/7/i386/win32codecs-20061022-1.fc7.fcn.y0.i386.rpm](ftp://ftp.fedora.cn/pub/fedora-cn/linux/7/i386/win32codecs-20061022-1.fc7.fcn.y0.i386.rpm)
安装就ok了

2，安装Realplayer
[ftp://ftp.fedora.cn/pub/fedora-cn/linux/7/i386/RealPlayer-10.0.9-1.fc7.fcn.y2.i386.rpm](ftp://ftp.fedora.cn/pub/fedora-cn/linux/7/i386/RealPlayer-10.0.9-1.fc7.fcn.y2.i386.rpm)

3,安装audacious

yum install audacious audacious-plugins-nonfree-mp3 audacious-plugins-nonfree-wma

4，totem 默认无法播放rmvb，所以决定卸载totem，改用totem-xine

yum remove totem
yum install totem-xine
只要前面已经安装过对应的解码器，应该就可以播放包括rmvb在内的电影了</div>