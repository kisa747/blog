@echo off
chcp 65001 >NUL
::一键发布博客

rem robocopy .\ .\.deploy_git\bak *.cmd *.sh _config.yml

rem if errorlevel 1 (
rem   echo 正在清理 hexo 数据文件、渲染，然后发布博客。
rem   hexo clean & hexo d -g & pause
rem   ) else (
rem   echo 正在渲染，然后发布博客。
rem   hexo clean & hexo d -g & pause
rem )

rem exit

hexo clean & hexo d -g & pause
