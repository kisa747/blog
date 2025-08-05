---
layout: post
title: 安装wordpress后要做的8件事
date: 2010-01-15
tags: ["wordpress","wordpress","优化","安装","插件","设置"]
---

继上次[建立wordpress系列](http://www.kisa747.com/build-wordpress-01.html)之后，继续折腾wordpress。刚安装成功wordpress后，很多设置还是需要经过调整后，才能很好符合使用习惯。

### 一、修改账户名

安装wordpress后会提供一个如下格式的账户：

<!--more-->
> 用户名：admin
> 
> 密码：%PLYgwSJN^p2
默认建立的admin账户名无法修改，所以需要在 控制板→用户→添加新用户，"角色"选择管理员，重新建立一个<span style="color: #ff0000;">**管理员账户**</span>，然后以新建的管理员账号登录，并删除原来默认的admin帐号。
> 使用用默认的admin账户也不够安全，新建一个不容易猜到的用户名可以增强wordpress的安全性。

### 二、设置时区

wordpress默认的时区是UTC +0，在 控制板→设置→常规，设置时区为UTC +8或是shanghai。否则博客和评论显示的时间会超前8小时。

### 三、开启XML-RPC接口以远程网站发布文章

像我一般用windows live writter离线撰写博客，所以这个功能必须打开才行。

在 控制板→设置→撰写→远程发布，选中XML-RPC 选项。

### 四、设置任何人都可以评论

wordpress默认是别人无法评论的（评论者必须成功发表过评论），而且评论方面默认的设置也过于严格了。

在 控制板→设置→讨论，去掉"评论者必须成功发表过评论"的选项，然后保存更改。

其它的评论设置可以参考我的设置：

[![wordpress 评论设置](http://localhost/img/2010/011501.jpg "wordpress 评论设置")](011501.jpg)

### 五、取消默认上传图片后裁剪生成缩略图

wordpress默认上传图片后，会另外裁剪生成两个小尺寸的图片。完全没有此必要，不仅浪费空间，还浪费流量。直接缩略原始图片就可以了，还可以节省加载原始图片的时间。

在 控制板→设置→媒体，将图像大小与嵌入里面所有尺寸的宽和高全部删除，保存更改，它会自动将所有的值保存为0，以后上传图片就不自动裁剪图片了。

### 六、修改固定链接格式

在 控制板→设置→固定链接→常规设置，设置固定链接格式。

我的固定链接格式为自定义结构：/%postname%.html

### 七、修改上传图片的位置

wordpress默认上传的位置为wp-content/uploads，如果用ftp管理时，会发现目录太深了，好麻烦。

在 控制板→设置→杂项，默认上传路径修改为 images。

### 八、禁用WordPress修订历史与自动保存

可以解决WordPress日志ID不连续的问题，像我有洁癖，看到不连续的ID会很是不爽，尤其选择ID作为固定链接的朋友这样设置后会更爽。
> Update：wordpress 3.3.1之后ID连续太难实现了，即使进行下面的操作，还是会有auto-draft产生。所以我觉得也没必要为ID不连续再纠结了。
①、修改wordpress根目录下面的"wp-config.php"

修改wordpress根目录下的wp-config.php，在"define ('WPLANG', 'zh_CN');"下面添加下面代码:

`//自动保存24小时一次
define('AUTOSAVE_INTERVAL', 86400);
//取消自动修订版
define('WP_POST_REVISIONS',false);
`

②、修改主题的"functions.php"

通过修改wordpress也可以实现该功能，但由于每次升级wordpress后就会失效。所以建议采用修改主题的"functions.php"实现。

在functions.php内合适位置添加以下内容：
<pre>/* 移除自动保存 */
add_action( 'wp_print_scripts', 'disable_autosave' );
function disable_autosave() {
	wp_deregister_script('autosave');
}
remove_action('pre_post_update', 'wp_save_post_revision' );</pre>