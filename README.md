# 镜像同步工具 - 阿里云镜像仓库同步方案

## 背景与挑战

在国内网络环境下，Docker Hub 访问受限，导致无法直接使用官方镜像。虽然阿里云提供了镜像仓库服务，但其中许多常用镜像缺失，影响开发效率。

## 解决方案

我开发了一个自动化工具，利用海外服务器作为中转，将 Docker Hub 上的镜像自动同步至阿里云私有镜像仓库，解决了国内环境下镜像获取困难的问题。

## 主要特点

- **自动同步**：定时或按需将 Docker Hub 镜像同步至阿里云仓库
- **选择性同步**：支持指定镜像及标签，避免不必要的存储占用
- **版本追踪**：可配置追踪特定镜像的最新版本
- **空间管理**：自动清理长期未使用的镜像，优化存储空间

## 使用限制

阿里云个人镜像仓库容量上限为 300GB，建议：
- 仅同步必要的镜像和标签
- 定期清理不再使用的历史镜像
- 考虑使用镜像分层技术减少存储占用

## 后续优化方向

- 添加镜像使用频率分析，智能管理存储空间
- 支持批量镜像同步任务调度
- 增加镜像同步状态监控和通知机制

```shell
docker run -it -p 8088:80 \
  -e OPENPROJECT_SECRET_KEY_BASE=secret \
  -e OPENPROJECT_HOST__NAME=100.64.17.126:8088 \
  -e OPENPROJECT_HTTPS=false \
  -e OPENPROJECT_DEFAULT__LANGUAGE=en \
  registry.cn-hangzhou.aliyuncs.com/macroldj/openproject:15
```

- 镜像地址：`registry.cn-hangzhou.aliyuncs.com/macroldj/openproject:15`