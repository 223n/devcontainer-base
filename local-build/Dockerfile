# ========================================
# Vehicle Management System DevContainer
# ベースイメージを使用したプロジェクト固有設定
# ========================================

# ローカルビルド版のベースイメージを使用
ARG TAG=latest
FROM 223n-devcontainer-base:${TAG}

# または GitHub Container Registry版を使用する場合はコメントを切り替え
# FROM ghcr.io/223n/devcontainer-base:${TAG}

# プロジェクト固有の作業ディレクトリ
WORKDIR /workspaces/vehicle-management

# プロジェクト固有の設定やツールがあればここに追加
# 例: RUN npm install -g some-project-specific-tool

# ユーザーはベースイメージで設定済み (vscode)
USER vscode

# デフォルトシェル
SHELL ["/bin/bash", "-c"]
