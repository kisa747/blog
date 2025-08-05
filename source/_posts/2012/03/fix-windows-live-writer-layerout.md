---
layout: post
title: 解决Windows Live Writer下页面错位问题
date: 2012-03-31
categories: 随笔
tags: ["css3","html5","ie","wordpress","wordpress","主题"]
---

最近经常修改主题，用WLW更新主题后，发现在WLW下编辑和预览页面显示错位，整个页面无法居中。起初推测WLW是调用IE的内核来显示网页的样式的，难道我的主题本来在IE下显示错位么？

于是赶紧调出IE9测试，发现显示一切正常啊。在WLW中预览显示没有CSS3的圆角，那WLW调用的肯定不是IE9内核了，可能是IE8了，现在最新版的WLW的发布时间应该是2010～2011之间。于是调出IEtester，用IE7、IE8进行测试，也是显示正常，甚至在IE6下都正常。一下子没辙了，不知道WLW这货哪里抽筋了。

于是放狗搜，还没有任何结果。

<!-- more -->

就这样一直没有结果，反正也就是页面不居中，别的也没什么问题，对正常使用没有任何影响。本来也就放弃解决它了，那天在验证HTML5时，突然想到，莫非是IE8不支持HTML5，才导致的页面错位?

我现在的主题为了支持HTML5，header的声明是现在的形式：

```html
<!DOCTYPE html>
<html>
```

赶紧把header里的声明修改为：

```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
```

测试一下，一切恢复正常了。原来都是IE8不支持HTML5惹得祸。

这样的话，只要WLW更新主题前，先头部声明给修改一下就可以了。等WLW更新完主题后再恢复回来就行了。

![032501](img/2012/032501.png)