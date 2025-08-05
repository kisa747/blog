---
layout: post
title: 如何使用Google的https加密搜索引擎
date: 2010-05-22
tags: ["chrome","firefox","google","ssl","技巧分享"]
---

[![https版Google基于SSL加密](img/2010/052201.png)](052201.png)

果然不负众望，Google今日推出基于SSL的加密搜索：[https://www.google.com](https://www.google.com/)，除了图片和地图搜索，其它包括网页、博客、动态等搜索等已经全面部署SSL加密协议。

从此再也不用担心因为搜索某些关键词，因为里面包括胡萝卜等敏感词，而导致Google的页面也被重置。天朝人民的福音啊！

<!--more-->

这么好的东西，当然要在第一时间使用了。

### 一、向Firefox添加https版Google搜索引擎

【添加地址】：[SSL加密版Google搜索引擎](https://addons.mozilla.org/zh-CN/firefox/addon/161910/)

### 二、设置Chrome的默认使用https版google搜索

打开菜单"选项"，在基本设置选项卡里，管理"搜索引擎"。

添加以下内容：
> 名称：Https版Google
> 
> 关键字：https://www.google.com
> 
> 网址：https://www.google.com/search?hl=zh-CN&q=%s
然后将添加的搜索设置为默认搜索引擎。

![052202](img/2010/052202.png)

### 三、设置Opera默认为https版Google搜索

点击搜索图标的小倒三角，选择"管理搜索引擎"。

![052203](img/2010/052203.png)

添加与Chrome相同的内容：
> 名称：Https版Google
> 
> 关键字：Google
> 
> 网址：https://www.google.com/search?hl=zh-CN&q=%s
并记得选中"用作默认搜索引擎"和"用作快速拨号引擎"两个选项。

[![052204](img/2010/052204.png)](052204.png)

### 四、解决google.com跳转至google.com.hk的方法

默认情况下无论打开[http://www.google.com](http://www.google.com/) 还是打开 [https://www.google.com](https://www.google.com/) 均会跳转至 [http://www.google.com.hk](http://www.google.com.hk/) 。

而我们想继续使用google.com，尤其更想使用https版google。怎么办呢？其实方法很简单，只需稍微设置下即可。

1、打开[http://www.google.com/ncr](http://www.google.com/ncr)，进入英文版google主页。（或是点击[http://www.google.com.hk](http://www.google.com.hk/)网站下面的"Google.com in English"）

![设置google.com](img/2010/052205.png)

2、点击页面右上角的"[Search settings](http://www.google.com/preferences?hl=zh-CN)"，将第一项的Interface Language（界面语言）设置为"Chinese Simplified（简体中文）"。然后点击"Save Preferences（保存设置）"。

经过设置后，下面的几个地址均可直达中文版google.com。google会通过cookie记录下你的设置不再跳转google.com。
> [http://www.google.com](http://www.google.com/)
> 
> [https://www.google.com](https://www.google.com/)
> 
> [http://www.google.com/webhp?hl=zh-CN](http://www.google.com/webhp?hl=zh-CN)
> 
> [https://www.google.com/webhp?hl=zh-CN](https://www.google.com/webhp?hl=zh-CN)