---
layout: post
title: 使用Google Public DNS
date: 2009-12-04
tags: ["dns","google","linux","墙奸","技巧分享","设置"]
---

最近中国移动发飙，墙奸了无数的站点，不得不考虑换上值得信任的DNS，以减少不必要的麻烦。

昨天Google开始推出Public DNS，根据官方的介绍，它是一个完全免费的DNS解析服务器。

官方博客说明:[Introducing Google Public DNS](http://googleblog.blogspot.com/2009/12/introducing-google-public-dns.html)（英文、需翻墙）。

<!--more-->

官方使用说明：[Using Google Public DNS](http://code.google.com/intl/zh-CN/speed/public-dns/docs/using.html)（英文），详细的各种系统下的使用方法说明。和OpenDNS不同的是，Google Public DNS并不重定向用户到广告页面。

Google Public DNS的服务器地址如下：
> 8.8.8.8
> 8.8.4.4
是不是觉得这组IP地址很帅？Google总是给我们很多的惊喜。

简单说下Windows下的使用方法：

网络连接 → 本地连接 → 属性 → Internet 协议 (TCP/IPv4) → 属性 → DNS 服务器填入 8.8.8.8 和 8.8.4.4。

![使用Google Public DNS](4156993209_f7da1f8890_o.jpg)

Linux下图形下设置方法差不多，如果没有图形界面的网络管理器，则修改"/etc/resolv.conf"，将其中的内容替换为：
> nameserver 8.8.8.8
> 
> nameserver 8.8.4.4
顺便再介绍一下在Google Public DNS之前比较有名的[OpenDNS](http://www.opendns.com/)，也很不错。

OpenDNS的DNS服务器地址如下：
> 208.67.222.222
> 208.67.220.220
使用OpenDNS，在网页被重置后，会带到一个OpenDNS的页面。

现在可以放心地使用Google Public DNS、OpenDNSS啦，从此远离中国电信的DNS劫持。