---
layout: post
title: 彻底清除autorun.inf病毒一个批处理命令
date: 2007-11-03
tags: ["autorun","windows xp","批处理","技巧分享","病毒"]
---

我是深受autorun.inf之类的病毒的毒害，症状是双击U盘盘符提示无法打开或打开病毒文件，于是决定亲自编写一个 批处理命令来彻底铲除它。鉴于网上针对autorun.inf存在各种的专杀工具，却不能监控U盘中的autorun.inf,而具有监控能力的却要后台 运行，必然浪费一定的内存。于是我决定采用这种方案：就是不用在我的电脑中打开U盘，而是在桌面创建一个批处理命令，先对U的病毒进行检测，确认无毒并对 U盘免疫后在打开U盘，我觉得这是一个比较完美的解决方案。

<!--more-->

使用方法：
1~~~将附件解压到任意地方，首先编辑<打开U盘&MP3.cmd>，由于我的U盘的盘符J：，各位可以将其改为对应的盘符－－－ －－方法：编辑<打开U盘&MP3.cmd>，用记事本打后，"编辑"－"替换"。然后将<span style="color: #ff0000;">G：</span>（我的U盘对应的盘符) 全部替换为你的U盘所对应的盘符。
<span style="color: #800000;"> 2~~~</span>为</span><span style="font-size: small;"><打开U盘&MP3.cmd>在桌面创建一个快捷方式就OK了！还可以为快捷方式自定义一个喜爱的图标，是不是很酷哦！！

以后打开U盘或MP3就只需双击桌面的快捷方式就可以了～～～
以下是代码：

<pre>@echo off
color 0a
if not exist G: goto exit

G:
if exist autorun.inf\\kisa747.txt goto MENU
if not exist autorun.inf\\kisa747.txt goto NO

:NO
attrib -s -h -r autorun.inf
del autorun.inf
mkdir autorun.inf
cd autorun.inf
mkdir nokill..\\
echo            kisa747为U盘免疫而创建的文件,不必担心是病毒 >kisa747.txt
cd..
attrib +s +h +r autorun.inf
goto MENU

:MENU
cls
dir /a/b
ECHO.
ECHO.
ECHO                     ┏━━━━━━━━━━━━━━━━━━━━━━┓
ECHO                     ┃                                                    ┃
ECHO                     ┃                 请检查是否存在可疑程序文件                 ┃
ECHO                     ┃                                                    ┃
ECHO                     ┃                       按任意键退出                         ┃
ECHO                     ┃                                                    ┃
ECHO                     ┗━━━━━━━━━━━━━━━━━━━━━━┛
ECHO.
ECHO.
ECHO.
pause

:EXIT
explorer G:</pre>
我我做好成批处理程序了,可以直接下载使用
点击下载程序 </span>[**U盘autorun.inf清理工具ver2007.11.3.zip**](http://cid-6abece639ad907b9.skydrive.live.com/self.aspx/public/U%e7%9b%98autorun.inf%e6%b8%85%e7%90%86%e5%b7%a5%e5%85%b7ver2007.11.3.zip)