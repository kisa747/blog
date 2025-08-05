---
layout: post
title: linux太强大了 ─ 之学习samba
date: 2007-05-31
categories: linux
tags: ["linux","samba","局域网"]
---

以前用windows给别人局域网共享，捣鼓了好久怎么都搞不定，如今用linux共享，简直太easy了，配置一下samba.conf就ok了。
贴上咱的samba.conf

<!--more-->

```ini
[global]
workgroup = JIANHUAN
server string = Ubuntu
dns proxy = no
log file = /var/log/samba/log.%m
max log size = 1000
syslog = 0
security = share
encrypt passwords = false
wins support = yes
[电影]
path = /home/dianying
available = yes
browsable = yes
public = yes
writable = no
```
设置完成后
运行命令sudo /etc/init.d/samba restart
接下来我们再进行一次客户端的自我测试:
运行命令smbclient -L //localhost

Samba有用的命令
> smbclient ：访问所有共享资源
> smbstatus： 列出当前所有的samba连接状态
> smbpasswd：修改samba用户口令、增加samba用户。
> nmblookup：用于查询主机的NetBIOS名，并将其映射为IP地址
> testparam： 用于检查配置文件中的参数设置是否正确
但是用share级别的共享安全性不太够，下面是user级的配置

```ini
[global]
workgroup = frog studio
server string = Ubuntu Samba Server
log file = /var/log/samba/log.%m
security = user
encrypt passwords = yes
smb passwd file = /etc/samba/smbpasswd
[Share Directory 2]
comment = My Share Directory 2
path = /home/share2
writable = yes
#有权限进入者为%S，表示当前的共享名
valid users = %S
create mode = 0664
directory mode = 0775`
```

设置完成后,再次重启Samba服务器,但现在先不要急于跑到windows下去测试,因为这个是要用户名和密码的,下面我们先创建登录用户和登录密码:
> smbpasswd -a smb (在密码文件里新增一个用户(smb))
>
> #smbpasswd -d smb (暂停用户登录)
>
> #smbpasswd -e smb (恢复暂停用户)
>
> #smbpasswd -x smb (删除用户)
>
> 更多操作请参考man smbpasswd
>
> 创建好密码文件后,测试Samba设置,testparm,测试正常后,查看一下我们的共享目录:
>
> `smbclient -L //localhost`



再贴个8.04下的配置文件
```ini
[global]
workgroup = WORKGROUP
server string = %h server (Samba, Ubuntu)
wins support = yes
log file = /var/log/samba/log.%m
max log size = 1000
syslog = 0
security = user
encrypt passwords = true
socket options = TCP_NODELAY
usershare max shares = 100
[public]
path = /home/kisa/public
browseable = yes
read only = no
public = yes
writable=yes
guest ok = yes
create mask = 0775
directory mask = 0775
```