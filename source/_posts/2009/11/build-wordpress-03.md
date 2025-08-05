---
layout: post
title: 建立wordpress博客系列（3）
date: 2009-11-19 08:03
categories: wordpress
tags: [wordpress, 数据库]
---

### （1）博客导出

我之前的博客在百度空间，用下面的工具很容易就能将博客搬家到wordpress上。

1、博客大巴提供的在线博客搬家工具:[http://banjia.blogbus.com](http://banjia.blogbus.com)
支持以下的BSP：

> Blogcn，和讯，网易， 新浪，搜狐，Qzone，百度空间，博客网
2、如果没有你的BSP，就用Blog_Backup 博客备份工具吧。

下载地址：[Blog_Backup.rar](http://cid-6abece639ad907b9.skydrive.live.com/self.aspx/public/blog-backup.rar)

它支持的BSP更多，下面是它支持的BSP列表：
> 目前支持的博客服务商[BSP]如下：
> 
> 百度空间      新浪博客      和讯博客      Donews博客      博客巴士
> 天涯博客      MSN空间     搜狐博客     QQ空间     Bokee博客
> 歪酷博客     网易博客     CSDN博客     ChinaUnix博客     博客生活
> TechWeb     凤凰博客     中国博客网     猫扑博客     东方财富网
> 天极博客     中金博客     阿里巴巴博客     中华网博客     博客园
> 牛博网     上证博客     饭否     畅享博客     友商社区
> 雅虎中国     牛博国际
> 
> 目前支持的个人博客如下：
> 
> F2Blog      PJBlog      Z-Blog      WordPress      Bo-Blog
> 
> 目前支持的读书频道如下：
> 
> 搜狐读书频道      新浪读书频道      QQ读书频道

### （2）博客导入

通过第一步得到了导出的XML文件，进入wordpress的后台→工具→导入→RSS，然后导入即可。

### （3）博客迁移

我们可以先选择一个免费的虚拟主机作为测试，免费的虚拟主机很多，我试过FreeWebHosting和Fibre-hosting，国内都被墙的厉害，也就是测试用下。在虚拟主机上安装wordpress与本地差不多，上传wordpress文件到虚拟主机上后，重新修改wp-config.php，然后导入数据库就OK啦！

在本机测试后最终是要迁移到虚拟主机上的，所以光能导入导出还是不够滴，这时需要整个数据库的迁移，由于本机和虚拟主机上博客的URL不一样，所以迁移前需要修改一下才行。

进入phpAdmin，修改表"wp_options"中的的第2行和第38行，换成新域名网址。
> 第2行是站点url，不改进不了后台；
> 
> 第38行是主页地址，也可在后台设置常规里修改。
修改后导出sql文件，导入到服务器上，就可以将数据库从本地转移到服务器上啦！