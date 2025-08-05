---
layout: post
title: Grub4DOS高级应用
date: 2010-04-28
tags: ["grub","技巧","技巧分享"]
---

其实经过之前的介绍，Grub4DOS现在已经可以很好地工作了。但在实际使用过程中还是会遇到一些小问题。

### 一、C盘已经有了grldr怎么办？

比如我的电脑会由于安装了其它的一个软件，C盘已经存在了一个grldr。而直接将Grub4DOS的grldr文件名更改，肯定会失败的。

<!--more-->

这时需要使用UltraEdit等软件对源文件进行修改，（替换ASCⅡ码，匹配大小写），将grldr和grldr.mbr两个文件内容的GRLDR和grldr分别对应替换为GSLDR和gsldr。之后就可以将grldr和grldr.mbr更改为gsldr和gsldr.mbr。

### 二、Grub4DOS还能做什么？

1、引导一键Ghost的img镜像

2、引导PE。

3、Grub4DOS支持中文么？

这么牛X的软件，能不支持中文么。只需用fontfile命令加载合适的中文字体文件就可以了。包括字体在内的文件下载可以看这里：[Grub4DOS学习笔记](http://www.kisa747.com/grub4dos-study.html)。

4、善于使用find命令，这个命令真是个好东西啊。所以再也不用为root (hd0,0)的命令中，(hd0,0)到底是哪个盘而烦恼了。

直接上menu.lst内容：

<pre>timeout 3
default 0
splashimage /kisa/grub/rhel.xpm.gz
fontfile /kisa/grub/fonts
#background bbbbbb
#foreground 3355aa
title 一键 Ghost 11.0.2
    map --mem /kisa/grub/ghost.img (fd0)
    map --hook
    chainloader (fd0)+1
    rootnoverify (fd0)    
title WinPE 系统维护
    find --set-root /LDRXPE
    chainloader /LDRXPE
    boot
title Windows 7 Utimate
    find --set-root /bootmgr
    chainloader /bootmgr   
title Windows XP Professional
    find --set-root /ntldr
    chainloader /ntldr
title 重启
	reboot
title 关机
	halt
</pre>

Grub4DOS的命令较多，更多可以参考[官方Wiki](http://grub4dos.sourceforge.net/wiki/index.php/Grub4dos%E5%91%BD%E4%BB%A4%E7%B4%A2%E5%BC%95)。