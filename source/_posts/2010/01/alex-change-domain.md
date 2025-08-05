---
layout: post
title: 为alex做域名转移
date: 2010-01-18
tags: ["wordpress","wordpress","互联网","域名"]
---

前一段时间为好友alex注册了新的域名[alexslife.com](http://www.alexslife.com/)，alex也彻底宣布进入独立博客的队伍中啦！（鼓掌～～  :lol: ）话说在godaddy上注册域名，真是好好简单，怀疑当初我购买域名时脑子是不是进水了，咋就在国内买域名呢，唉！不过还好我还是没有被.CN的价格所诱惑，没有选择.CN域名。

然后为新域名备案，备案那旮旯子破事，现在还TMD要身份证复印件，工信部真会折腾人。恨自己做不到"宁断头，不备案"的豪迈气魄。
<!--more-->

域名更换全记录：首先备份主机上所有的文件和数据库，之后的操作就可以为所欲为了，即使出错也不用担心，咱们有备份。

由于仅是域名迁移，所以没有涉及到主机转移，为新站点导入备份的就站点的数据库。然后修改数据库，参考[建立wordpress博客系列（3）](http://www.kisa747.com/build-wordpress-03.html)，进入phpAdmin，修改表"wp_options"中的的第2行和第38行，将alex.kisa747.com换成新域名alexslife.com。然后做以下几点设置。

### 一、对旧站点做301重定向

将alex.kisa747.com上的所有地址重定向到域名alexslife.com下。先将alex.kisa747.com站点下除了.htaccess其它的文件和文件夹全部删除，然后修改.htaccess为以下内容。

`# BEGIN WordPress
Options +FollowSymLinks
RewriteEngine on
rewritecond %{http_host} ^alex.kisa747.com [nc]
rewriterule ^(.*)$ http://www.alexslife.com/$1 [L,R=301]
# END WordPress
`

所以旧站alex.kisa747.com还要保留一段时间，等alexslife.com正常收录后，再将它删除。

### 二、防盗链设置

修改新站点下http://www.alexslife.com/imges/.htaccess为以下内容：

`RewriteEngine on
RewriteCond %{HTTP_REFERER} !^$
RewriteCond %{HTTP_REFERER} !^http://www.alexslife.com(/)?.*$ [NC]
RewriteCond %{HTTP_REFERER} !^http://alexslife.com(/)?.*$ [NC]
RewriteCond %{HTTP_REFERER} !zhuaxia.com [NC]
RewriteCond %{HTTP_REFERER} !google.com [NC]
RewriteCond %{HTTP_REFERER} !xianguo.com [NC]
RewriteCond %{HTTP_REFERER} !qq.com [NC]
RewriteCond %{HTTP_REFERER} !yahoo.com [NC]
RewriteCond %{HTTP_REFERER} !feedsky.com [NC]
RewriteCond %{HTTP_REFERER} !feedburner.com [NC]
RewriteRule .*\.(gif'jpg'jpeg'bmp'png'swf'mp3)$ http://www.alexslife.com/error.xpng [R,NC]
`

### 三、批量修改内部链接

由于图片在本机储存的，所有仅需修改文章内的链接就可以了。

`
update wp_posts set post_content=replace(post_content,'http://alex.kisa747.com','http://www.alexslife.com')`

修改评论管理员的链接为新域名。

`
update wp_comments set comment_author_url=replace(comment_author_url,'http://alex.kisa747.com','http://www.alexslife.com')`

OK！就这么简单，搬家完毕，再就剩下修改RSS订阅源之类的细节了。

BTW，表扬下Godaddy，解析速度那叫一个快呀，反正Godaddy所有的一切比想象的还要好，超赞啊！