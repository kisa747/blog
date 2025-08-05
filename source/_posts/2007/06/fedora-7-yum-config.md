---
layout: post
title: fedora 7  中yum 的设置
date: 2007-06-30
categories: linux
tags: ["fedora","linux","yum","设置"]
---

默认安装好Fedora后，yum就可以使用了，但由于服务器在国外，速度奇慢无比，因此需要手动设置一下，可大大提高yum的速度
1，安装 yum-fastestmirror  插件

<!--more-->

yum install yum-fastestmirror -y

2，添加livna软件仓库
[http://rpm.livna.org/livna-release-7.rpm](http://rpm.livna.org/livna-release-7.rpm)

下载后并双击安装
然后对系统进行整体的升级
yum update -y

3，安装图形化的yum

yum install yumex