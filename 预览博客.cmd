@echo off
rem 强制UTF8模式
chcp 65001 >NUL


rem pause && exit
echo 正在渲染...
start http://localhost:4000
hexo clean && hexo server

pause && exit
