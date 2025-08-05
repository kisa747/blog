---
layout: post
title: wordpress主题functions.php实例几则
date: 2010-07-06
tags: ["dropbox","wordpress","主题","函数","正则表达式"]
---

wordpress强大的函数功能，让一切不可能都变成了现实。而wordpress 3.0显得更为复杂，甚至可以说是臃肿。不过借助它的强大，我们完全可以DIY属于自己的wordpress。

位于主题目录下的functions.php，就是我们自定义主题函数的集散地。通过在functions.php里添加短短几行代码，就可以实现众多的功能。

### 一、删除more标签截断处的跳转

我一直使用的最为原始的方法，用插入more标签实现文章截断功能，然而read more链接会变成如下的形式：

```
<a class="more-link" href="http://www.kisa747.com/1.html<span style="color: #ff0000;">#more-447</span>">阅读全文</a>
```

点击它会自动跳到#more-447的位置，很不爽。凭借wordpress强大的add_filter函数，实现这点太小kiss了。

在functions.php内添加以下代码：

代码参考自：[Domety](http://domety.com/)»[《自定义more标签的more跳转》](http://domety.com/archives/220/)

```
// 取消more截断的more标签
function remove_more_jump_link($link) {
return preg_replace('/#more-\d+/i','',$link);
}
add_filter('the_content_more_link', 'remove_more_jump_link');
```

### 二、自动替换Dropbox的外链地址

众所周知，Dropbox的所有外链地址，无论是http还是https，如今都被屏蔽了。其实Dropbox还有一个外链地址https://dl-web.dropbox.com，暂时还能用。尽管它也岌岌可危，尽管我明白我这么做实在加速Dropbox的离去。

1、替换dl.dropbox.com为dl-web.dropbox.com。

同理，在functions.php内添加以下代码：

```
// 自动替换Dropbox的外链地址
function replace_dropbox($content) {
return preg_replace('/https?:\/\/dl.dropbox.com\/+/i','https://dl-web.dropbox.com/',$content);
}
add_filter('the_content', 'replace_dropbox');
```

为什么我要用正则来匹配呢？

嘿嘿，当有一天早上醒来，打开[https://dl-web.dropbox.com/](https://dl-web.dropbox.com/)，提示你该页被重置时。不要震惊，你可以淡定地将代码修改为下面的代码，其中红色文字，需做对应修改，你懂的。

```
// 自动替换Dropbox的外链地址
function replace_dropbox($content) {
return preg_replace('/https?:\/\/dl.dropbox.com\/u\/<span style="color: #ff0000;">3633907</span>\/+/i','<span style="color: #ff0000;">http://localhost/img/</span>',$content);
}
add_filter('the_content', 'replace_dropbox');
```

### 三、禁用半角符号自动转换为全角

wordpress默认会转换文章中的半角符号为全角，可以借助下面代码去掉这个过度关心的功能。

同理，在functions.php内添加以下代码：

```
//禁用半角符号自动转换为全角
remove_filter('the_content', 'wptexturize');
```