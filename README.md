# 说明文档

[![Pages](https://github.com/kisa747/blog-backup/actions/workflows/pages.yml/badge.svg)](https://github.com/kisa747/blog-backup/actions/workflows/pages.yml)

这是我旧的博客

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

## 发布

### 方法一、使用 Github Actions 发布

Github - Pages - Build and deployment - Source 设置为 `Github Actions`

🚀 推荐使用此方法，在项目仓库目录下创建 `.github/workflows/pages.yml`，内容参考本仓库该文件

### 方法二、一键部署

Github - Pages - Build and deployment - Source 设置为 `Deploy from a branch`

本地生成静态网址文件，然后推送至指定仓库。`_config.yml` 配置文件中配置好仓库信息：

```yaml
# Deployment
## Docs: https://hexo.io/docs/deployment.html
# username换成自己的用户名和仓库名,去掉括号
deploy:
    type: git
    repo: git@github.com:kisa747/blog-backup.git
    branch: gh-pages
```

然后一键发布

```sh
# 生成静态网站文件并发布至指定仓库
hexo clean && hexo deploy --generate
```

### 方法三、手动发布

手动将 `public` 目录下文件推送至仓库，或是拷贝至服务器。
