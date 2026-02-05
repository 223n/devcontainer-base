# 変更履歴

## 目次

- [変更履歴](#変更履歴)
  - [目次](#目次)
  - [v1.3.0 (2026-02-05)](#v130-2026-02-05)
    - [v1.3.0 - 1 - Node.jsインストール方法の変更](#v130---1---nodejsインストール方法の変更)
      - [v1.3.0 - 1-1 - 問題](#v130---1-1---問題)
      - [v1.3.0 - 1-2 - 解決策](#v130---1-2---解決策)
        - [v1.3.0 - 1-2-1 - 変更前（NodeSourceリポジトリ使用）](#v130---1-2-1---変更前nodesourceリポジトリ使用)
        - [v1.3.0 - 1-2-2 - 変更後（公式バイナリ直接インストール）](#v130---1-2-2---変更後公式バイナリ直接インストール)
      - [v1.3.0 - 1-3 - 追加パッケージ](#v130---1-3---追加パッケージ)
      - [v1.3.0 - 1-4 - メリット](#v130---1-4---メリット)
      - [v1.3.0 - 1-5 - 影響](#v130---1-5---影響)
  - [v1.2.2 (2025-12-22)](#v122-2025-12-22)
    - [v1.2.2 - 1 - ドキュメント修正](#v122---1---ドキュメント修正)
    - [v1.2.2 - 2 - Release Noteのリンク先を修正](#v122---2---release-noteのリンク先を修正)
    - [v1.2.2 - 3 - 影響](#v122---3---影響)
  - [v1.2.1 (2025-12-22)](#v121-2025-12-22)
    - [v1.2.1 - 1 - GitHub Actionsの非推奨機能を修正](#v121---1---github-actionsの非推奨機能を修正)
      - [v1.2.1 - 1-1 - エラー内容](#v121---1-1---エラー内容)
      - [v1.2.1 - 1-2 - 修正内容](#v121---1-2---修正内容)
      - [v1.2.1 - 1-3 - 影響](#v121---1-3---影響)
  - [v1.2.0 (2025-12-22)](#v120-2025-12-22)
    - [v1.2.0 - 1 - OpenSSH-Clientを追加](#v120---1---openssh-clientを追加)
      - [v1.2.0 - 1-1 - エラー内容](#v120---1-1---エラー内容)
      - [v1.2.0 - 1-2 - 変更内容](#v120---1-2---変更内容)
      - [v1.2.0 - 1-3 - 影響](#v120---1-3---影響)
  - [v1.1.1 (2025-12-22)](#v111-2025-12-22)
    - [v1.1.1 - 1 - GitHub Actionsのワークフロー修正](#v111---1---github-actionsのワークフロー修正)
      - [v1.1.1 - 1-1 - 修正内容](#v111---1-1---修正内容)
      - [v1.1.1 - 1-2 - 影響](#v111---1-2---影響)
  - [v1.1.0 (2025-12-22)](#v110-2025-12-22)
    - [v1.1.0 - 1 - バグ修正](#v110---1---バグ修正)
      - [v1.1.0 - 1-1 - Dockerタグ形式エラーを修正](#v110---1-1---dockerタグ形式エラーを修正)
        - [v1.1.0 - 1-1-1 - エラー内容](#v110---1-1-1---エラー内容)
        - [v1.1.0 - 1-1-2 - 原因](#v110---1-1-2---原因)
        - [v1.1.0 - 1-1-3 - 修正内容](#v110---1-1-3---修正内容)
        - [v1.1.0 - 1-1-4 - 結果](#v110---1-1-4---結果)
      - [v1.1.0 - 1-2 - 影響](#v110---1-2---影響)
      - [v1.1.0 - 1-3 - セマンティック版の生成タグ](#v110---1-3---セマンティック版の生成タグ)
  - [v1.0.1 (2025-12-22)](#v101-2025-12-22)
    - [v1.0.1 - 1 - 設定修正](#v101---1---設定修正)
      - [v1.0.1 - 1-1 - デフォルトのエディターをnanoに設定](#v101---1-1---デフォルトのエディターをnanoに設定)
    - [v1.0.1 - 2 - バグ修正](#v101---2---バグ修正)
      - [v1.0.1 - 2-1 - npm install -gの権限エラーを修正](#v101---2-1---npm-install--gの権限エラーを修正)
      - [v1.0.1 - 2-2 - 修正内容](#v101---2-2---修正内容)
        - [v1.0.1 - 2-2-1 - 変更前（エラー発生）](#v101---2-2-1---変更前エラー発生)
        - [v1.0.1 - 2-2-2 - 変更後（修正版）](#v101---2-2-2---変更後修正版)
      - [v1.0.1 - 2-3 - エラーメッセージ](#v101---2-3---エラーメッセージ)
    - [v1.0.1 - 3 - 影響](#v101---3---影響)
    - [v1.0.1 - 4 - テスト方法](#v101---4---テスト方法)
  - [v1.0.0 (2025-12-22)](#v100-2025-12-22)
    - [v1.0.0 - 1 - 初回リリース](#v100---1---初回リリース)

## v1.3.0 (2026-02-05)

### v1.3.0 - 1 - Node.jsインストール方法の変更

#### v1.3.0 - 1-1 - 問題

Debian 13 (trixie) が2026年2月1日からSHA1署名を拒否するセキュリティポリシーを適用。
NodeSourceリポジトリのGPGキーがSHA1で署名されているため、`apt-get update` 時に検証エラーが発生。

```text
E: The repository 'https://deb.nodesource.com/node_20.x nodistro InRelease' is not signed.
W: OpenPGP signature verification failed: ... SHA1 is not considered secure since 2026-02-01T00:00:00Z
```

#### v1.3.0 - 1-2 - 解決策

NodeSourceリポジトリの使用を廃止し、Node.js公式バイナリを直接ダウンロード・インストールする方式に変更。

##### v1.3.0 - 1-2-1 - 変更前（NodeSourceリポジトリ使用）

```dockerfile
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
```

##### v1.3.0 - 1-2-2 - 変更後（公式バイナリ直接インストール）

```dockerfile
ENV NODE_VERSION=20.18.2

RUN ARCH=$(dpkg --print-architecture) \
    && case "${ARCH}" in \
         amd64) NODE_ARCH='x64' ;; \
         arm64) NODE_ARCH='arm64' ;; \
         armhf) NODE_ARCH='armv7l' ;; \
         *) echo "Unsupported architecture: ${ARCH}" && exit 1 ;; \
       esac \
    && curl -fsSL "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-${NODE_ARCH}.tar.xz" -o /tmp/node.tar.xz \
    && tar -xJf /tmp/node.tar.xz -C /usr/local --strip-components=1 \
    && rm /tmp/node.tar.xz \
    && node --version \
    && npm --version
```

#### v1.3.0 - 1-3 - 追加パッケージ

Node.jsのtar.xzアーカイブを展開するため、`xz-utils` パッケージを追加。

#### v1.3.0 - 1-4 - メリット

- 外部リポジトリに依存しない
- マルチアーキテクチャ対応（amd64, arm64, armhf）
- バージョン管理が明示的（`NODE_VERSION` 環境変数）

#### v1.3.0 - 1-5 - 影響

- [Dockerfile](./Dockerfile): Node.jsインストール方法を変更
- [local-build/Dockerfile.base](./local-build/Dockerfile.base): 同上
- その他のファイル: 変更なし

## v1.2.2 (2025-12-22)

### v1.2.2 - 1 - ドキュメント修正

- 2024年に誤っていたのを2025年に修正
- 影響を受けるファイルをリンクに修正

### v1.2.2 - 2 - Release Noteのリンク先を修正

- masterとすべきところをmainとしていたのを修正

### v1.2.2 - 3 - 影響

- [CHANGELOG.md](./CHANGELOG.md): ドキュメント修正
- [.github/workflows/build-image.yml](.github/workflows/build-image.yml): Release Noteリンク先修正
- その他のファイル: 変更なし

## v1.2.1 (2025-12-22)

### v1.2.1 - 1 - GitHub Actionsの非推奨機能を修正

#### v1.2.1 - 1-1 - エラー内容

```text
Warning: The `set-output` command is deprecated and will be disabled soon. Please upgrade to using Environment Files. For more information see: https://github.blog/changelog/2022-10-11-github-actions-deprecating-save-state-and-set-output-commands/
```

#### v1.2.1 - 1-2 - 修正内容

- GitHub CLI (`gh release create`) に変更
- リリースノートをファイル経由で生成

#### v1.2.1 - 1-3 - 影響

- **build-image.yml**: リリース作成方法を修正
- その他のファイル: 変更なし

## v1.2.0 (2025-12-22)

### v1.2.0 - 1 - OpenSSH-Clientを追加

- OpenSSH-Clientが不足しているため、git pullが実行できない問題に対応

#### v1.2.0 - 1-1 - エラー内容

```sh
vscode@75afcbc74201:/workspaces/vehicle-management$ git pull
error: cannot run ssh: No such file or directory
fatal: unable to fork
```

#### v1.2.0 - 1-2 - 変更内容

```dockerfile
    openssh-client \    # 追加
```

#### v1.2.0 - 1-3 - 影響

- [Dockerfile](./Dockerfile): OpenSSH-Clientを追加
- [local-build/Dockerfile.base](./local-build/Dockerfile.base): 同上
- その他のファイル: 変更なし

## v1.1.1 (2025-12-22)

### v1.1.1 - 1 - GitHub Actionsのワークフロー修正

#### v1.1.1 - 1-1 - 修正内容

- ワークフローの起動条件を手動限定に変更しました。

#### v1.1.1 - 1-2 - 影響

- [.github/workflows/build-image.yml](.github/workflows/build-image.yml): 起動条件を手動限定に変更
- その他のファイル: 変更なし

## v1.1.0 (2025-12-22)

### v1.1.0 - 1 - バグ修正

#### v1.1.0 - 1-1 - Dockerタグ形式エラーを修正

##### v1.1.0 - 1-1-1 - エラー内容

```text
ERROR: failed to build: invalid tag "ghcr.io/223n/devcontainer-base:-19c746a": 
invalid reference format
```

##### v1.1.0 - 1-1-2 - 原因

`docker/metadata-action@v5`の設定で、以下のタグ生成ルールが問題でした：

```yaml
tags: |
  type=sha,prefix={{branch}}-
```

`{{branch}}`が空になるケースがあり、`-19c746a`のように `-` で始まる不正なタグが生成されていました。

##### v1.1.0 - 1-1-3 - 修正内容

**変更前:**

```yaml
tags: |
  type=raw,value=latest,enable={{is_default_branch}}
  type=sha,prefix={{branch}}-     # ← 問題箇所
  type=ref,event=branch
```

**変更後:**

```yaml
tags: |
  type=raw,value=latest,enable={{is_default_branch}}
  type=sha,prefix=sha-            # ← 固定プレフィックスに変更
```

##### v1.1.0 - 1-1-4 - 結果

正常なDockerタグが生成されるようになりました：

```bash
# 変更前（エラー）
ghcr.io/223n/devcontainer-base:-19c746a  # 不正

# 変更後（正常）
ghcr.io/223n/devcontainer-base:sha-19c746a  # 正常
```

#### v1.1.0 - 1-2 - 影響

- [.github/workflows/build-image.yml](.github/workflows/build-image.yml): タグ生成ルールを修正
- その他のファイル: 変更なし

#### v1.1.0 - 1-3 - セマンティック版の生成タグ

バージョン`v1.0.2`をプッシュした場合の生成タグ例：

```bash
ghcr.io/223n/devcontainer-base:latest      # 最新版
ghcr.io/223n/devcontainer-base:1.0.2       # 完全バージョン
ghcr.io/223n/devcontainer-base:1.0         # マイナーバージョン
ghcr.io/223n/devcontainer-base:1           # メジャーバージョン
ghcr.io/223n/devcontainer-base:sha-19c746a # コミットSHA
```

## v1.0.1 (2025-12-22)

### v1.0.1 - 1 - 設定修正

#### v1.0.1 - 1-1 - デフォルトのエディターをnanoに設定

```sh
git config --global core.editor "nano"
```

### v1.0.1 - 2 - バグ修正

#### v1.0.1 - 2-1 - npm install -gの権限エラーを修正

- グローバルnpmパッケージのインストールをvscodeユーザー作成前に移動
- rootユーザーでインストールすることで権限エラーを解消

#### v1.0.1 - 2-2 - 修正内容

##### v1.0.1 - 2-2-1 - 変更前（エラー発生）

```dockerfile
# vscodeユーザーの作成
RUN groupadd --gid 1000 vscode && ...

# vscodeユーザーに切り替え
USER vscode

# グローバルnpmパッケージのインストール ← ここで権限エラー
RUN npm install -g \
    wrangler@latest \
    typescript@latest \
    prettier@latest
```

##### v1.0.1 - 2-2-2 - 変更後（修正版）

```dockerfile
# グローバルnpmパッケージのインストール（rootユーザーで実行）
RUN npm install -g \
    wrangler@latest \
    typescript@latest \
    prettier@latest

# vscodeユーザーの作成
RUN groupadd --gid 1000 vscode && ...

# vscodeユーザーに切り替え
USER vscode
```

#### v1.0.1 - 2-3 - エラーメッセージ

```text
npm error If you believe this might be a permissions issue, please double-check the
npm error permissions of the file and its containing directories, or try running
npm error the command again as root/Administrator.
ERROR: failed to solve: process "/bin/sh -c npm install -g ..." did not complete successfully: exit code: 243
```

### v1.0.1 - 3 - 影響

- [Dockerfile](./Dockerfile): グローバルnpmパッケージインストールの順序変更
- [local-build/Dockerfile.base](./local-build/Dockerfile.base): 同上
- その他のファイル: 変更なし

### v1.0.1 - 4 - テスト方法

```bash
# ローカルビルド
cd .devcontainer
./build-base.sh

# または直接ビルド
docker build -f Dockerfile -t 223n-devcontainer-base:latest .
```

ビルドが成功することを確認してください。

---

## v1.0.0 (2025-12-22)

### v1.0.0 - 1 - 初回リリース

- Debian 13 (trixie) ベース
- Node.js 20 LTS
- vscodeユーザー（UID/GID: 1000）
- Git設定の自動適用
- direnv統合
