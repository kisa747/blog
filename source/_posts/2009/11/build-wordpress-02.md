---
layout: post
title: 建立wordpress博客系列（2）
date: 2009-11-19 08:02
categories: wordpress
tags: ["easyphp","inove","wordpress","主题"]
---

在上一篇[建立wordpress博客系列（1）](../build-wordpress-01.html)里，在本地通过EasyPHP搭建的PHP和MySQL环境成功安装了wordpress。就可以尽情地在本地折腾主题和插件啦！

我现在用的就是大名鼎鼎的mg12的iNove主题，插件iNove主题推荐安装的那几个插件我差不多都装了。

现在记下几点常用的设置。

### （1）开启Apache的mod_rewrite功能

通过开启mod_rewrite功能，实现wordpress的伪静态化，轻松去掉URL里的"index.php"。

右击任务栏通知区域的小e图标→配置→Apache，即开始编辑"httpd.conf"

1. 让Apache加载mod_rewrite.so模块，找到如下部分：

```
#LoadModule rewrite_module modules/mod_rewrite.so
```

去掉：`#LoadModule rewrite_module modules/mod_rewrite.so` 前的 #

2. 设置允许在任何目录中使用".htaccess"文件，找到如下部分：

```
# AllowOverride controls what directives may be placed in .htaccess files.
# It can be "All", "None", or any combination of the keywords:
#   Options FileInfo AuthConfig Limit
#
AllowOverride None
```

将 `AllowOverride None` 改为 `AllowOverride All`

至此就可以自由设置wordpress的固定链接格式了，我的固定链接格式是："%postname%.html"。

### （2）设置inove主题嵌入Google自定义搜索

以下参考自Let's whisper的  [美化iNove的Google自定义搜索](http://www.whisperer.name/2009/09/improve-the-google-custom-search-results-of-inove/)

1、登陆到[Google自定义搜索](http://www.google.com/coop/cse/)，创建你的自定义搜索。

2、创建一个搜索结果模板。把下面代码保存为cse.php，上传至iNove主题的文件夹（放到/themes/iNove/下）。（cse意为custom search engine，你可以换成其它。）
```php
<?php
/*
Template Name: cse
*/
?>
<?php get_header(); ?>
<div id="cse-search-results"></div>
<script type="text/javascript">
var googleSearchIframeName = "cse-search-results";
var googleSearchFormName = "cse-search-box";
var googleSearchFrameWidth =605;
var googleSearchDomain = "www.google.com";
var googleSearchPath = "/cse";
</script>
<script type="text/javascript"
src="show_afs_search.js"></script>
<?php get_footer(); ?>
```
var googleSearchFrameWidth =605为搜索结果页面的宽度，iNove默认的宽度是605。

3、在WordPress中创建一个页面，比如我的地址为http://www.kisa747.com/cse，标题为"搜索结果"，模板选择刚刚创建的cse。

然后在导航栏隐藏这个页面，在iNove的文件夹下找到/templates/header.php，找到下面一行：

```php
wp_list_pages('title_li=0&sort_column=menu_order');
```

改成:

```php
wp_list_pages('title_li=0&sort_column=menu_order&exclude=41');
```

其中exclude=41意思是在导航栏隐藏这个cse页面，41是这个页面的ID，在/wp-admin/edit-pages.php页面，鼠标悬浮在页面的标题上，在下面状态栏就可以看到post=41。

4、定义搜索框。仍然是templates/header.php，找到下面代码:

```php+HTML
<form action="http://www.google.com/cse" method="get">
<div class="content">
<input type="text" class="textfield" name="q" size="24" />
<input type="submit" class="button" name="sa" value="" />
<input type="hidden" name="cx" value="<?php echo $options['google_cse_cx']; ?>" />
<input type="hidden" name="ie" value="UTF-8" />
</div>
</form>
```
改成：

```php+HTML
<form action="<?php bloginfo('wpurl') ?>/cse" id="cse-search-box">
<div class="content">
<input type="hidden" name="cx" value="<?php echo $options['google_cse_cx']; ?>" />
<input type="hidden" name="cof" value="FORID:11" />
<input type="hidden" name="ie" value="UTF-8" />
<input type="text" class="textfield" id="searchtxt" name="q" size="24" />
<input type="submit" class="button" id="searchbtn" name="sa" value="" />
</div>
</form>
```

其中第一行的 `< ?php bloginfo('wpurl') ?>/cse` 是刚刚你创建的搜索结果页面的地址。

5、在iNove的主题选项中，勾选使用Google自定义引擎，填上你的CX值。

这样，所有的工作都做完了。你可以随时在WordPress默认搜索和Google自定义搜索之间进行切换。并且不需要再另外用css定义搜索框了，已经沿用原来的搜索框样式了。

Update：感谢为我留言的网友 [林](http://www.lanpoly.cn) ，热情地提醒我下面这个问题，并给出了解决方法。

设置inove主题嵌入Google自定义搜索后，在IE6下会出现导航条下面有条空白的错位，连搜索框内输入内容的地方都跑到了下面。


解决方法：是CSS的问题，修改iNove主题的style.css即可。只需要把搜索框的长度设置的短一点，IE6下就完全正常了。

在style.css中找到以下：

```css
#searchbox .textfield {
background:none;
border:0px;
width:185px;
float:left;
margin-right:2px;
padding-left:2px;
}
```

将width值改为183即可。