---
layout: post
title: fedora 7 中也用sudo 命令
date: 2007-06-30
categories: linux
tags: ["fedora","linux","sudo","设置"]
---

1，将当前用户加入sudoer组中，以根用户运行

`echo 'your_user_name ALL=(ALL) ALL' >> /etc/sudoers`

其中your_user_name为要加入sudoer中的用户名

<!--more-->

或是直接编辑/etc/sudoers

`~su -
#visudo`

用法跟vi 一样

在最后一段添加

`your_user_name ALL=(ALL) ALL`