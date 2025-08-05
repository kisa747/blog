---
layout: post
title: 由Google搜索MP3专辑想到的(转)
date: 2007-10-05
categories: 技巧分享
tags: ["google","卡巴斯基"]
---

原指令代码:[http://hibaidu.cn/html/18/2007-09/13089.html](http://hibaidu.cn/html/18/2007-09/13089.html)
> -inurl:(htm'html'php) intitle:"index of" +"last modified" +"parent directory" +description +size +(wma'mp3) "关键字"

<!--more-->

搜索指令是一样的,拓展一下:

搜索卡巴斯基的激活key:

打开Google,输入:
> -inurl:(htm'html'php) intitle:"index of" +"last modified" +"parent directory" +description +size +(key'rar) "kav"
Google一下，返回结果有:
![](4059722686_0f2f842698_o.gif)

看了搜索指令,可能有些人还是不怎么懂怎么用,我说说我的理解吧.我也不太懂...
> -inurl:(htm'html'php) in title:"index of" +"last modified" +"parent directory" +description +size +(key'rar) "kav"
1.在指定服务器文件系统内查找,即指定文件地址的后缀:inurl
inurl:(htm'html'php) 这里是指搜索结果的地址形式为XXXX.htm或XXXX.html或XXXX.html还可以是XXXX.php
当然,精确搜索可以只指定一种地址形式,如:inurl:(php) ,当然当然,还可以是inurl:(asp),inurl:(shtml)等等等.

2.搜索指定标题的网页:intitle

intitle:"index of" 这个指令搜索结果多数为Apache服务器的网页FTP页面.

3.指定页面包含的字串
+"parent directory" +description +size + 包含这种字串的网页也是多数为Apache服务器的网页FTP页面.

4.指定页面包含文件类型:
(key'rar) "kav" 这里的意思是文件后缀为key或者rar,关键字是kav,我这里这样写的意思是搜索kav(卡巴)为文件名,key或rar文件类型的文件.提供卡巴下载一般为rar压缩包,可能还连同带有key...哈哈...

好了,说到这里,你希望用好Google就研究一下吧,事半功倍哦,你只用百度呀,那你研究下面这个也行。

* * *

<span style="color: #800000;">百度的高级搜索方法(2007年初赛）</span>

题面描述：

你尝试过在百度上使用site inurl语法查询吗? 如果还没有的话可以试一下:)

如输入 site:www.baidu.com inurl:news

则会搜出所有在www.baidu.com站点上的包含"news"子串的url。

现在我们有两份数据，一份是site_inurl.txt 一份是url.txt

site_inurl.txt中每行是一个site inurl语法组成的查询串，url.txt中保存的是url列表。

你能否在url列表中找出所有能被site_inurl.txt中的查询串检索到的url?

如site_inurl.txt内容如下：

site:www.baidu.com inurl:/more

site:zhidao.baidu.com inurl:/browse/

site:www.sina.com.cn inurl:www20041223am

url.txt内容如下：

http://www.baidu.com/more/

http://www.baidu.com/guding/more.html

http://www.baidu.com/events/20060105/photomore.html

http://hi.baidu.com/browse/

http://hi.baidu.com/baidu/

http://www.sina.com.cn/head/www20021123am.shtml

http://www.sina.com.cn/head/www20041223am.shtml

则你的程序运行完输出的结果应该为：

http://www.baidu.com/more/

http://www.baidu.com/guding/more.html

http://www.sina.com.cn/head/www20041223am.shtml

程序以命令行形式传入这两个文件名，第一个参数为site_inurl文件对应的文件名，第二个参数为url列表对应的文件名，程序的输出请输出到标准输出。