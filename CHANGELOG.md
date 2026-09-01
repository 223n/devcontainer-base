# 変更履歴

## 目次

- [変更履歴](#変更履歴)
  - [目次](#目次)
  - [v1.7.0 (2026-09-01)](#v170-2026-09-01)
    - [v1.7.0 - 1 - Node.jsのバージョンアップ](#v170---1---nodejsのバージョンアップ)
    - [v1.7.0 - 2 - actions/checkoutのバージョンアップ](#v170---2---actionscheckoutのバージョンアップ)
    - [v1.7.0 - 3 - バージョン番号について](#v170---3---バージョン番号について)
  - [v1.6.0 (2026-05-27)](#v160-2026-05-27)
    - [v1.6.0 - 1 - Node.jsのバージョンアップ](#v160---1---nodejsのバージョンアップ)
    - [v1.6.0 - 2 - docker/build-push-actionのバージョンアップ](#v160---2---dockerbuild-push-actionのバージョンアップ)
    - [v1.6.0 - 3 - GitHub Actionsワークフローの最適化](#v160---3---github-actionsワークフローの最適化)
  - [v1.5.0 (2026-02-16)](#v150-2026-02-16)
    - [v1.5.0 - 1 - GitHub CLIをベースイメージに追加](#v150---1---github-cliをベースイメージに追加)
    - [v1.5.0 - 2 - Dockerfileの統合](#v150---2---dockerfileの統合)
    - [v1.5.0 - 3 - ドキュメントとワークフローの整備](#v150---3---ドキュメントとワークフローの整備)
  - [v1.4.0 (2026-02-14)](#v140-2026-02-14)
    - [v1.4.0 - 1 - Node.jsのバージョンアップ](#v140---1---nodejsのバージョンアップ)
    - [v1.4.0 - 2 - GitHub Actionsのバージョンアップ](#v140---2---github-actionsのバージョンアップ)
    - [v1.4.0 - 3 - node_modulesに名前付きボリュームを使用](#v140---3---node_modulesに名前付きボリュームを使用)
    - [v1.4.0 - 4 - その他の改善](#v140---4---その他の改善)
  - [v1.3.5 (2026-07-06)](#v135-2026-07-06)
    - [v1.3.5 - 1 - Node.jsのバージョンアップ](#v135---1---nodejsのバージョンアップ)
  - [v1.3.4 (2026-02-06)](#v134-2026-02-06)
    - [v1.3.4 - 1 - ARGタグの使用](#v134---1---argタグの使用)
  - [v1.3.3 (2026-02-06)](#v133-2026-02-06)
    - [v1.3.3 - 1 - pnpmを追加](#v133---1---pnpmを追加)
  - [v1.3.2 (2026-02-06)](#v132-2026-02-06)
    - [v1.3.2 - 1 - 日本語設定を追加](#v132---1---日本語設定を追加)
    - [v1.3.2 - 2 - gitの安全なディレクトリに追加](#v132---2---gitの安全なディレクトリに追加)
  - [v1.3.1 (2026-02-06)](#v131-2026-02-06)
    - [v1.3.1 - 1 - Node.jsインストール方法の変更](#v131---1---nodejsインストール方法の変更)
      - [v1.3.1 - 1-1 - 問題](#v131---1-1---問題)
      - [v1.3.1 - 1-2 - 原因](#v131---1-2---原因)
      - [v1.3.1 - 1-3 - 解決策](#v131---1-3---解決策)
      - [v1.3.1 - 1-4 - 変更内容](#v131---1-4---変更内容)
    - [v1.3.1 - 2 - 影響](#v131---2---影響)
    - [v1.3.1 - 3 - 追加パッケージ](#v131---3---追加パッケージ)
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

## v1.7.0 (2026-09-01)

### v1.7.0 - 1 - Node.jsのバージョンアップ

Node.jsを`26.4.0`から`26.8.1`に更新しました。

`26.4.0`と`26.8.1`の間に、セキュリティリリースである`26.5.1`（2026-07-28）が含まれます。セキュリティ観点から最新の`26.8.1`へ更新しています。

### v1.7.0 - 2 - actions/checkoutのバージョンアップ

GitHub Actionsの`actions/checkout`を`v6`から`v7`に更新しました。

v7の破壊的変更は、fork由来のPull Requestを`pull_request_target`および`workflow_run`トリガーでチェックアウトする際の挙動に関するものです。本ワークフローは`workflow_dispatch`トリガーのみを使用するため、影響はありません。

### v1.7.0 - 3 - バージョン番号について

このCHANGELOGは`v1.3.x`系で記載が止まっていましたが、実際のリリースタグは`v1.6.0`（2026-05-27）まで進んでいました。既存の最新である`v1.6.0`を超え、`latest`および`1`（メジャー）タグが最新イメージを指すよう、本リリースの番号を`v1.7.0`としています。

なお、記載が漏れていた`v1.4.0`・`v1.5.0`・`v1.6.0`のエントリを、コミット履歴を基に本リリースで遡って補完しました。

## v1.6.0 (2026-05-27)

### v1.6.0 - 1 - Node.jsのバージョンアップ

Node.jsを`25.6.1`から`26.2.0`に更新しました。ベースを Debian 13 (trixie) + Node.js 26 に変更しています。

### v1.6.0 - 2 - docker/build-push-actionのバージョンアップ

GitHub Actionsの`docker/build-push-action`を`v6`から`v7`に更新しました。

### v1.6.0 - 3 - GitHub Actionsワークフローの最適化

- `timeout-minutes`を追加し、ハング時の実行時間（分数）消費を防止しました。
- `runs-on`を`RUNNER_LABEL`変数方式に変更し、セルフホステッドランナーに対応しました（変数未設定時は`ubuntu-latest`にフォールバック）。

## v1.5.0 (2026-02-16)

### v1.5.0 - 1 - GitHub CLIをベースイメージに追加

GitHub CLI（`gh`）をベースイメージに追加しました。

### v1.5.0 - 2 - Dockerfileの統合

`local-build/Dockerfile.base`を削除し、単一の`Dockerfile`に統合しました。

### v1.5.0 - 3 - ドキュメントとワークフローの整備

- `devcontainer.json`を整備しました。
- ワークフロー名・ステップ名を日本語に統一しました。
- ドキュメントを整備しました（GitHub CLIをツール一覧に追加、プロジェクト名の汎用化、セマンティックバージョニングへの更新など）。

## v1.4.0 (2026-02-14)

### v1.4.0 - 1 - Node.jsのバージョンアップ

Node.jsを`25.6.0`から`25.6.1`に更新しました。

### v1.4.0 - 2 - GitHub Actionsのバージョンアップ

- `actions/checkout`: `v4` → `v6`
- `docker/build-push-action`: `v5` → `v6`

### v1.4.0 - 3 - node_modulesに名前付きボリュームを使用

Windows Docker Desktop環境でのファイル所有権問題を改善するため、`node_modules`に名前付きボリュームを使用するようにしました。所有権が`vscode`ユーザーになり`chown -R`が不要になるほか、WSL2 VMのネイティブファイルシステムを使用することで`npm install`も高速化されます。

### v1.4.0 - 4 - その他の改善

- `build-base.sh`の冗長な終了コードチェックを削除しました（`set -e`により到達不能だったため）。
- コンテナに認証情報が引き継がれるように設定を追加しました。
- 除外設定に`claude`を追加しました。
- ワークフローの`run-name`にバージョン情報を追加しました。

## v1.3.5 (2026-07-06)

### v1.3.5 - 1 - Node.jsのバージョンアップ

Node.jsを`26.2.0`から`26.4.0`に更新しました。

`26.2.0`と`26.4.0`の間に、セキュリティリリースである`26.3.1`（2026-06-17）が含まれます。セキュリティ観点から最新の`26.4.0`へ更新しています。

なお、Node.js 26は現在Current（非LTS）ラインで、2026年10月にLTS昇格予定です。

## v1.3.4 (2026-02-06)

### v1.3.4 - 1 - ARGタグの使用

Dockerfile内でARGタグを使用してイメージのバージョンを指定するように変更しました。

## v1.3.3 (2026-02-06)

### v1.3.3 - 1 - pnpmを追加

pnpmを追加しました。

## v1.3.2 (2026-02-06)

### v1.3.2 - 1 - 日本語設定を追加

日本語設定を追加しました。

### v1.3.2 - 2 - gitの安全なディレクトリに追加

gitの安全なディレクトリに作業フォルダーを追加しました。

## v1.3.1 (2026-02-06)

### v1.3.1 - 1 - Node.jsインストール方法の変更

NodeSourceリポジトリからNode.js公式バイナリ直接ダウンロードに変更しました。

#### v1.3.1 - 1-1 - 問題

DevContainerビルド時に以下のエラーが発生しました。

```text
E: The repository 'https://deb.nodesource.com/node_20.x nodistro InRelease' is not signed.
ERROR: Feature "GitHub CLI" (ghcr.io/devcontainers/features/github-cli) failed to install!
```

#### v1.3.1 - 1-2 - 原因

NodeSourceリポジトリのGPG署名がSHA1を使用しており、Debian Trixieでは2026年2月1日以降SHA1署名がセキュリティポリシーで拒否されるようになりました。

```text
Sub-process /usr/bin/sqv returned an error code (1), error message is:
Signing key on 6F71F525282841EEDAF851B42F59B5F99B1BE0B4 is not bound:
No binding signature at time 2026-01-19T15:27:46Z
because: Policy rejected non-revocation signature (PositiveCertification)
requiring second pre-image resistance
because: SHA1 is not considered secure since 2026-02-01T00:00:00Z
```

#### v1.3.1 - 1-3 - 解決策

Node.js公式サイトからバイナリを直接ダウンロードしてインストールする方式に変更しました。

#### v1.3.1 - 1-4 - 変更内容

変更前（NodeSourceリポジトリ使用）:

```dockerfile
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
```

変更後（公式バイナリ直接ダウンロード）:

```dockerfile
ARG NODE_VERSION=20.18.2

RUN ARCH=$(dpkg --print-architecture) \
    && case "${ARCH}" in \
         amd64) NODE_ARCH="x64" ;; \
         arm64) NODE_ARCH="arm64" ;; \
         *) echo "Unsupported architecture: ${ARCH}" && exit 1 ;; \
       esac \
    && curl -fsSL "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-${NODE_ARCH}.tar.xz" \
       -o /tmp/node.tar.xz \
    && tar -xJf /tmp/node.tar.xz -C /usr/local --strip-components=1 \
    && rm /tmp/node.tar.xz \
    && ln -sf /usr/local/bin/node /usr/local/bin/nodejs \
    && node --version \
    && npm --version
```

### v1.3.1 - 2 - 影響

- [Dockerfile](./Dockerfile): Node.jsインストール方法を変更
- [local-build/Dockerfile.base](./local-build/Dockerfile.base): 同上
- その他のファイル: 変更なし

### v1.3.1 - 3 - 追加パッケージ

- `xz-utils`: `.tar.xz`ファイルの展開に必要

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
