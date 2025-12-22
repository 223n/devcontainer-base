# DevContainerベースイメージ セットアップガイド

2つの使用方法を提供します。

## 目次

- [DevContainerベースイメージ セットアップガイド](#devcontainerベースイメージ-セットアップガイド)
  - [目次](#目次)
  - [1. パターン1: GitHub Container Registry版（推奨）](#1-パターン1-github-container-registry版推奨)
    - [1-1. セットアップ手順](#1-1-セットアップ手順)
      - [1-1-1. ステップ1: GitHubリポジトリの作成](#1-1-1-ステップ1-githubリポジトリの作成)
      - [1-1-2. ステップ2: ファイルの配置](#1-1-2-ステップ2-ファイルの配置)
      - [1-1-3. ステップ3: GitHubにプッシュ](#1-1-3-ステップ3-githubにプッシュ)
      - [1-1-4. ステップ4: GitHub Actionsの確認](#1-1-4-ステップ4-github-actionsの確認)
      - [1-1-5. ステップ5: プロジェクトで使用](#1-1-5-ステップ5-プロジェクトで使用)
      - [1-1-6. ステップ6: Container Registryの公開設定（必要に応じて）](#1-1-6-ステップ6-container-registryの公開設定必要に応じて)
    - [1-2. メリット](#1-2-メリット)
    - [1-3. デメリット](#1-3-デメリット)
  - [2. パターン2: ローカルビルド版](#2-パターン2-ローカルビルド版)
    - [2-1. セットアップ手順](#2-1-セットアップ手順)
      - [2-1-1. ステップ1: ファイルの配置](#2-1-1-ステップ1-ファイルの配置)
      - [2-1-2. ステップ2: ベースイメージのビルド](#2-1-2-ステップ2-ベースイメージのビルド)
      - [2-1-3. ステップ3: DevContainerの起動](#2-1-3-ステップ3-devcontainerの起動)
    - [2-2. メリット](#2-2-メリット)
    - [2-3. デメリット](#2-3-デメリット)
  - [3. 比較表](#3-比較表)
  - [4. 推奨フロー](#4-推奨フロー)
    - [4-1. 最初はローカルビルド版で試す](#4-1-最初はローカルビルド版で試す)
    - [4-2. 本格運用時はGitHub Container Registry版へ移行](#4-2-本格運用時はgithub-container-registry版へ移行)
  - [5. トラブルシューティング](#5-トラブルシューティング)
    - [5-1. GitHub Container Registryからプルできない](#5-1-github-container-registryからプルできない)
    - [5-2. ローカルビルドが失敗する](#5-2-ローカルビルドが失敗する)
  - [6. 更新方法](#6-更新方法)
    - [6-1. GitHub Container Registry版](#6-1-github-container-registry版)
    - [6-2. ローカルビルド版](#6-2-ローカルビルド版)
  - [7. 質問・サポート](#7-質問サポート)

---

## 1. パターン1: GitHub Container Registry版（推奨）

複数プロジェクトで使用する場合やチーム開発に最適

### 1-1. セットアップ手順

#### 1-1-1. ステップ1: GitHubリポジトリの作成

1. GitHubで新規リポジトリ作成
   - リポジトリ名: `devcontainer-base`
   - 公開設定: Private（またはPublic）

#### 1-1-2. ステップ2: ファイルの配置

以下のファイルをリポジトリに配置:

```text
devcontainer-base/
├── Dockerfile
├── .github/
│   └── workflows/
│       └── build-image.yml
└── README.md
```

#### 1-1-3. ステップ3: GitHubにプッシュ

```bash
cd devcontainer-base
git init
git add .
git commit -m "Add: DevContainerベースイメージの初期設定"
git branch -M master
git remote add origin git@github.com:223n/devcontainer-base.git
git push -u origin master
```

#### 1-1-4. ステップ4: GitHub Actionsの確認

GitHubリポジトリの「Actions」タブで自動ビルドが実行されることを確認

#### 1-1-5. ステップ5: プロジェクトで使用

`vehicle-management/.devcontainer/devcontainer.json`:

```json
{
  "name": "VMS Development",
  "image": "ghcr.io/223n/devcontainer-base:latest",
  "runArgs": ["--name", "vms-dev"],
  "remoteUser": "vscode",
  "customizations": {
    "vscode": {
      "extensions": [
        "esbenp.prettier-vscode",
        "dbaeumer.vscode-eslint"
      ]
    }
  },
  "forwardPorts": [8787],
  "postCreateCommand": "npm install",
  "postStartCommand": "bash -c 'if [ ! -f .envrc ]; then cp .envrc.template .envrc; fi && direnv allow && echo \"DevContainer ready!\"'"
}
```

#### 1-1-6. ステップ6: Container Registryの公開設定（必要に応じて）

プライベートイメージの場合、GitHubで認証が必要:

1. GitHub Personal Access Token作成
   - Settings > Developer settings > Personal access tokens
   - `read:packages` 権限を付与

2. Dockerでログイン:

```bash
echo $GITHUB_TOKEN | docker login ghcr.io -u 223n --password-stdin
```

### 1-2. メリット

- ✅ 複数プロジェクトで共有可能
- ✅ チーム全体で同じ環境
- ✅ 起動が高速（ビルド不要）
- ✅ CI/CDで自動更新

### 1-3. デメリット

- ❌ 初回設定がやや複雑
- ❌ GitHubアカウント必要
- ❌ プライベートイメージは認証必要

---

## 2. パターン2: ローカルビルド版

単一プロジェクトで使用する場合や、試験的に使いたい場合に最適

### 2-1. セットアップ手順

#### 2-1-1. ステップ1: ファイルの配置

`local-build/` の内容を `.devcontainer/` にコピー:

```bash
cd vehicle-management
cp -r /path/to/local-build/* .devcontainer/
```

#### 2-1-2. ステップ2: ベースイメージのビルド

```bash
cd .devcontainer
./build-base.sh
```

#### 2-1-3. ステップ3: DevContainerの起動

VS Codeで「Dev Containers: Reopen in Container」を実行

### 2-2. メリット

- ✅ オフラインで使用可能
- ✅ 即座に変更可能
- ✅ GitHubアカウント不要

### 2-3. デメリット

- ❌ 初回ビルドに時間がかかる（5-10分）
- ❌ プロジェクトごとにビルド必要
- ❌ ディスク容量を消費

---

## 3. 比較表

| 項目                     | GitHub Container Registry | ローカルビルド            |
|--------------------------|---------------------------|---------------------------|
| **セットアップ時間**     | 初回: 1-2分（プル）       | 初回: 5-10分（ビルド）    |
| **複数プロジェクト共有** | ✅ 簡単                   | ❌ 各プロジェクトでビルド |
| **チーム共有**           | ✅ 簡単                   | ❌ 各自ビルド必要         |
| **オフライン使用**       | ⚠️ 初回プル必要           | ✅ 完全オフライン可       |
| **変更の反映**           | GitHub Actions経由        | ✅ 即座                   |
| **ディスク使用量**       | 少ない                    | 多い                      |
| **GitHub必要**           | ✅ 必要                   | ❌ 不要                   |
| **推奨用途**             | 本番・チーム開発          | 個人・試験的使用          |

---

## 4. 推奨フロー

### 4-1. 最初はローカルビルド版で試す

```bash
# 1. ローカルビルド版でセットアップ
cd .devcontainer
./build-base.sh

# 2. 動作確認
# VS Code: "Dev Containers: Reopen in Container"

# 3. 問題なければ本格運用へ
```

### 4-2. 本格運用時はGitHub Container Registry版へ移行

```bash
# 1. GitHubリポジトリ作成
# 2. Dockerfileをプッシュ
# 3. devcontainer.jsonを更新

# 変更前
"build": { "dockerfile": "Dockerfile" }

# 変更後
"image": "ghcr.io/223n/devcontainer-base:latest"
```

---

## 5. トラブルシューティング

### 5-1. GitHub Container Registryからプルできない

```bash
# 認証確認
docker login ghcr.io

# イメージの存在確認
docker pull ghcr.io/223n/devcontainer-base:latest
```

### 5-2. ローカルビルドが失敗する

```bash
# Dockerデーモン確認
docker ps

# ディスク容量確認
docker system df

# キャッシュクリア
docker system prune -a
```

---

## 6. 更新方法

### 6-1. GitHub Container Registry版

1. `Dockerfile` を編集
2. GitHubにプッシュ
3. GitHub Actionsで自動ビルド
4. プロジェクトで `docker pull` 実行

### 6-2. ローカルビルド版

1. `Dockerfile.base` を編集
2. `./build-base.sh` 実行
3. VS Code: "Dev Containers: Rebuild Container"

---

## 7. 質問・サポート

問題が発生した場合:

1. このガイドのトラブルシューティングを確認
2. `local-build/README.md` または `README.md` を参照
3. GitHubでIssueを作成
