---
layout: post
title: 试用Incapsula进行CDN加速
date: 2012-04-05
categories: wordpress
tags: ["cdn","主机","技巧分享"]
---

最近几天，博客访问时常抽风。明明可以ping通，可就是打不开网站，客服回答说是最近国内电信线路的问题。TNND，非要我上CDN才行～

鉴于国内的CDN普遍要验证本人真实身份，且要备案号，没看到俺的下面写着备他妈的不备案号嘛。直接搜国外的网站，于是google到了 [Incapsula](http://www.incapsula.com/) ，测试了下效果还可以，设置神马的都还很简单。暂时先度过这个难关再说，明年上老鹰主机或棉花糖主机。

<!-- more -->

设置好Incapsula的CDN后，用 [webluker站长工具](http://www.webluker.com/tools/) 测试下了，大陆走的都是新加坡的节点，暂时表现很给力，继续观察中～～～。

再次测试博客的首页，发现Googe Page Speed竟得了个A，很给力啊；Yslow仍然是B，嗯！要继续努力。

> PS：最近不停的修改主题，要是不小心看到页面显示错乱的话，请不断的CTRL+F5强制刷新。