@echo off
chcp 65001 >NUL

robocopy .\ .\source\_data *.cmd _config.yml

robocopy .\source D:\Home\Git-Repo\note\Blog\source /s
rem robocopy .\source D:\Home\Git-Repo\note\Blog\source /mir

rem if errorlevel 1 (
rem     start http://localhost:4000
rem     echo 正在清理 hexo 数据文件、渲染，然后预览博客。
rem     hexo clean && hexo server
rem ) else (
rem     start http://localhost:4000
rem     echo 正在渲染，然后预览博客。
rem     hexo clean && hexo server
rem )

rem pause && exit

start http://localhost:4000
hexo clean && hexo server

pause && exit
