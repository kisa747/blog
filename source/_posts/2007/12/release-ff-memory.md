---
layout: post
title: 最小化释放Firefox内存
date: 2007-12-04
tags: ["firefox","windows xp","内存","技巧分享"]
---

今天上网时firefox占用内存竟狂飙到160多M，早就知道Firefox有一个问题是占用内存比较厉害，而且从不自动释放内存。幸好网上搜到了一个办法，可以通过最小化**Firefox**来释放内存，不过这个方法在vista下好像不能用。

1、在地址栏里面输入：  <span style="color: #800000;">**about:config**</span> 打开配置的参数列表

<!--more-->

2、找到参数。如果没有的话，创建一个 <span style="color: #800000;">**布尔**</span> 型键值，命名为<span style="color: #800000;">** config.trim_on_minimize**</span> ，设置其值为   <span style="color: #800000;">**true** </span> 。

3、重新启动Firefox浏览器。

这样以后就可以通过最小化Firefox来释放Firefox占用的内存了，非常好用。
开8个标签页在4～5分钟后内存大概在40多M，最小化后释放大量内存，减小到10多M。效果十分明显。