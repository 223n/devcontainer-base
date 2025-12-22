# DevContainer Base Image

[![Build and Push DevContainer Base Image](https://github.com/223n/devcontainer-base/actions/workflows/build-image.yml/badge.svg)](https://github.com/223n/devcontainer-base/actions/workflows/build-image.yml)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)

カスタムDevContainerベースイメージ

## 目次

- [DevContainer Base Image](#devcontainer-base-image)
  - [目次](#目次)
  - [1. 概要](#1-概要)
  - [2. 含まれるツール](#2-含まれるツール)
    - [2-1. システムツール](#2-1-システムツール)
    - [2-2. 開発ツール](#2-2-開発ツール)
    - [2-3. ユーザー設定](#2-3-ユーザー設定)
    - [2-4. Git設定](#2-4-git設定)
  - [3. 使い方](#3-使い方)
    - [3-1. GitHub Container Registryから使用](#3-1-github-container-registryから使用)
    - [3-2. ローカルでビルド](#3-2-ローカルでビルド)
  - [4. ビルド](#4-ビルド)
    - [4-1. GitHub Actionsで自動ビルド](#4-1-github-actionsで自動ビルド)
    - [4-2. 手動ビルド](#4-2-手動ビルド)
  - [5. カスタマイズ](#5-カスタマイズ)
  - [6. 更新](#6-更新)
  - [7. バージョン管理](#7-バージョン管理)

## 1. 概要

Debian 13 (trixie) + Node.js 20 LTSをベースとした開発環境用Dockerイメージです。

VS CodeのDevContainer機能で使用することを想定しています。

## 2. 含まれるツール

### 2-1. システムツール

- Git
- curl
- wget
- vim
- nano
- direnv
- sqlite3
- jq
- zip
- unzip
- bash-completion

### 2-2. 開発ツール

- Node.js 20 LTS
- npm（Node.js付属）
- TypeScript（latest）
- Prettier（latest）
- Wrangler（Cloudflare CLI）

### 2-3. ユーザー設定

- ユーザー名: `vscode`
- UID/GID: 1000
- sudoアクセス: 有効

### 2-4. Git設定

```bash
user.name = 223n
user.email = 223n@223n.tech
core.autocrlf = input
core.eol = lf
init.defaultBranch = master
```

## 3. 使い方

### 3-1. GitHub Container Registryから使用

`.devcontainer/devcontainer.json`:

```json
{
  "name": "VMS Development",
  "image": "ghcr.io/223n/devcontainer-base:latest",
  "runArgs": ["--name", "vms-dev"],
  "remoteUser": "vscode",
  "workspaceFolder": "/workspaces/${localWorkspaceFolderBasename}",
  "customizations": {
    "vscode": {
      "extensions": [
        "dbaeumer.vscode-eslint",
        "esbenp.prettier-vscode"
      ]
    }
  }
}
```

### 3-2. ローカルでビルド

```bash
docker build -t 223n-devcontainer-base:latest .
```

`.devcontainer/devcontainer.json`:

```json
{
  "name": "VMS Development",
  "image": "223n-devcontainer-base:latest",
  "runArgs": ["--name", "vms-dev"],
  "remoteUser": "vscode"
}
```

## 4. ビルド

### 4-1. GitHub Actionsで自動ビルド

masterブランチにpushすると自動的にビルドされます。

### 4-2. 手動ビルド

```bash
# ビルド
docker build -t ghcr.io/223n/devcontainer-base:latest .

# プッシュ（要認証）
docker push ghcr.io/223n/devcontainer-base:latest
```

## 5. カスタマイズ

プロジェクト固有の設定が必要な場合は、このイメージをベースにカスタマイズできます：

```dockerfile
FROM ghcr.io/223n/devcontainer-base:latest

# プロジェクト固有のツールをインストール
RUN npm install -g your-custom-tool

# プロジェクト固有の設定
WORKDIR /workspaces/your-project
```

## 6. 更新

ベースイメージを更新した場合:

```bash
# ローカルイメージの更新
docker pull ghcr.io/223n/devcontainer-base:latest

# DevContainerの再ビルド
# VS Code: "Dev Containers: Rebuild Container"
```

## 7. バージョン管理

- `latest`: 最新の安定版
- `master-<commit-sha>`: masterブランチの特定コミット
