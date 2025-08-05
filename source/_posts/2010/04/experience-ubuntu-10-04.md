---
layout: post
title: 轻松体验Ubuntu 10.04 LTS
date: 2010-04-27
tags: ["grub","linux","ubuntu","windows 7"]
---

![](img/2010/042701.png)Ubuntu 10.04 LTS再有2天就要正式发布了，现在RC版已经可用。Ubuntu 10.04作为一个LTS长期支持版本，你是不是早已按奈不住内心的冲动，想体验一把Ubuntu 10.04。至于我折腾的Ubuntu桌面，可以看 → [这里](http://www.kisa747.com/config-wordpress-ubuntu-10-04.html)。

通过昨天介绍的Windows 7下使用Grub4DOS的方法，我们可以很方便地在Windows下体验Ubuntu，这时Grub作为优秀的启动管理器，所有的优点都展现无遗。

<!--more-->

先下载Ubuntu LiveCD

【下载地址】：[http://releases.ubuntu.com/10.04/](http://releases.ubuntu.com/10.04/)
> PS：*desktop-i386.iso为32位版，*desktop-amd64.iso为64位版。Desktop版的才是LiveCD，不要下错了。

### 一、体验Ubuntu LiveCD

不用刻录ISO镜像即可直接体验LiveCD，跟用光盘启动没什么两样。

1、提取出光盘中casper目录下的vmlinuz和initrd.lz两个文件到任意盘的根目录。比如放到D:\vmlinuz和D:\initrd.lz，原ISO光盘镜像文件放到哪里也无所谓。

2、在menu.lst里添加以下内容，即可用Grub引导Ubuntu LiveCD。
<pre>title Ubuntu 10.04 LiveCD
    find --set-root --ignore-floppies /vmlinuz
    kernel /vmlinuz boot=casper iso-scan/filename=/ubuntu-10.04-rc-desktop-i386.iso ro quiet splash locale=zh_CN.UTF-8
    initrd /initrd.lz
    boot</pre>
> PS：其中的"ubuntu-10.04-rc-desktop-i386.iso"，必须与你下载的镜像文件名一致。

### 二、体验Wubi安装Ubuntu

用虚拟光驱加载Ubuntu LiveCD，运行光盘根目录下的wubi.exe，选择"在Windows中安装"，即可wubi安装Ubuntu到硬盘，跟安装软件没什么两样，不用格式化硬盘。比如安装到D盘，则会在D盘创建一个ubuntu文件夹，在BOOTMGR启动项里添加一个Ubuntu启动项，仅此而已。

如果我们重装系统了，那么曾经wubi安装的ubuntu是不是需要重装呢？

肯定不需要了。只要我们Wubi安装到非系统盘，重装系统后：

1、将安装目录下的\ubuntu\winboot\wubildr拷贝至C:\（即C盘根目录）；

2、然后在menu.lst中添加以下内容，grub菜单里便会重现Ubuntu的启动项，即可重新引导你曾经安装过的Wubi Ubuntu。你会得到一个像软件一样的Ubuntu系统，可以永远放在你的硬盘里。
<pre>title Ubuntu 10.04 Wubi
    find --set-root --ignore-floppies /ubuntu/winboot/wubildr.mbr
    chainloader /ubuntu/winboot/wubildr.mbr</pre>