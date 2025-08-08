---
layout: post
title:  Hexo 部署 Github Actions
date: 2025-08-06 22:09
categories: 技巧分享
tags: [hexo]
---

## Hexo 部署 Github Actions

参考：<https://hexo.io/zh-cn/docs/github-pages>

Github - Pages - Build and deployment - Source 设置为 `Github Actions`

在储存库中建立 `.github/workflows/pages.yml`

<!-- more -->

```yaml
name: Pages

on:
  push:
    branches:
      - main # default branch

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          token: ${{ secrets.GITHUB_TOKEN }}
          # If your repository depends on submodule, please see: https://github.com/actions/checkout
          submodules: recursive
      - name: Use Node.js lts
        uses: actions/setup-node@v4
        with:
          # Examples: 20, 18.19, >=16.20.2, lts/*, lts/Hydrogen, *, latest, current, node
          # Ref: https://github.com/actions/setup-node#supported-version-syntax
          node-version: "lts/*"
      - name: Cache NPM dependencies
        uses: actions/cache@v4
        with:
          path: node_modules
          key: ${{ runner.OS }}-npm-cache
          restore-keys: |
            ${{ runner.OS }}-npm-cache
      - name: Install Dependencies
        run: npm install
      - name: Build
        run: npm run build
      - name: Upload Pages artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: ./public
  deploy:
    needs: build
    permissions:
      pages: write
      id-token: write
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

## 本地部署指南

```sh
# 安装最新的 nodejs 长期支持版本
scoop install nodejs-lts
# 持久使用淘宝源
npm config set registry https://registry.npmmirror.com
# 全局安装Hexo，为了能够使用hexo命令。
npm install hexo-cli -g
# 初始化Hexo（在blog空目录下执行，作为仓库根目录）
cd blog
hexo init
# 创建网站，npm将会自动安装你需要的组件，只需要等待npm操作即可。
npm install
# 局部安装 Git 部署工具
npm install hexo-deployer-git --save
# 局部安装服务器模块
npm install hexo-server --save
# 安装主题
npm install hexo-theme-fluid --save

# 本地预览
start http://localhost:4000
hexo clean && hexo server

# 生成静态网站文件。生成至 public 文件夹下
hexo clean && hexo generate
```







