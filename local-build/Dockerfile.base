# ========================================
# カスタムDevContainerベースイメージ
# Debian 13 (trixie) + Node.js 20 LTS
# User: vscode
# ========================================

FROM debian:trixie-slim

# メタデータ
LABEL org.opencontainers.image.source="https://github.com/223n/devcontainer-base"
LABEL org.opencontainers.image.description="Custom DevContainer base image with Node.js 20 LTS on Debian 13"
LABEL org.opencontainers.image.licenses="MIT"

# 非対話的インストールの設定
ENV DEBIAN_FRONTEND=noninteractive

# 基本パッケージのインストール
RUN apt-get update && apt-get install -y --no-install-recommends \
    # 開発ツール
    git \
    curl \
    wget \
    vim \
    nano \
    ca-certificates \
    gnupg \
    # ビルドツール
    build-essential \
    # データベース
    sqlite3 \
    # シェル環境
    direnv \
    bash-completion \
    # その他便利ツール
    jq \
    zip \
    unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Node.js 20 LTS のインストール
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# グローバルnpmパッケージのインストール（rootユーザーで実行）
RUN npm install -g \
    wrangler@latest \
    typescript@latest \
    prettier@latest

# vscodeユーザーの作成
RUN groupadd --gid 1000 vscode \
    && useradd --uid 1000 --gid 1000 -m -s /bin/bash vscode \
    && apt-get update \
    && apt-get install -y sudo \
    && echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/vscode \
    && chmod 0440 /etc/sudoers.d/vscode \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# vscodeユーザーに切り替え
USER vscode

# Git グローバル設定
RUN git config --global user.name "223n" \
    && git config --global user.email "223n@223n.tech" \
    && git config --global core.autocrlf input \
    && git config --global core.eol lf \
    && git config --global init.defaultBranch master \
    && git config --global pull.rebase false \
    && git config --global core.editor "nano"

# direnv自動読み込み設定
RUN echo 'eval "$(direnv hook bash)"' >> ~/.bashrc

# bash補完の有効化
RUN echo '[ -f /etc/bash_completion ] && . /etc/bash_completion' >> ~/.bashrc

# プロンプトのカスタマイズ（オプション）
RUN echo 'export PS1="\[\e[32m\]\u@\h\[\e[0m\]:\[\e[34m\]\w\[\e[0m\]\$ "' >> ~/.bashrc

# 作業ディレクトリの設定
WORKDIR /home/vscode

# デフォルトシェル
SHELL ["/bin/bash", "-c"]

# Node.jsとnpmのバージョン確認用
RUN node --version && npm --version && git --version

# ヘルスチェック
HEALTHCHECK NONE

# デフォルトコマンド
CMD ["/bin/bash"]
