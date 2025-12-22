# 変更履歴

## 目次

- [変更履歴](#変更履歴)
  - [目次](#目次)
  - [v1.1.1 (2024-12-22)](#v111-2024-12-22)
    - [v1.1.1 - 1 - GitHub Actionsのワークフロー修正](#v111---1---github-actionsのワークフロー修正)
      - [v1.1.1 - 1-1 - 修正内容](#v111---1-1---修正内容)
      - [v1.1.1 - 1-2 - 影響](#v111---1-2---影響)
  - [v1.1.0 (2024-12-22)](#v110-2024-12-22)
    - [v1.1.0 - 1 - バグ修正](#v110---1---バグ修正)
      - [v1.1.0 - 1-1 - Dockerタグ形式エラーを修正](#v110---1-1---dockerタグ形式エラーを修正)
        - [v1.1.0 - 1-1-1 - エラー内容](#v110---1-1-1---エラー内容)
        - [v1.1.0 - 1-1-2 - 原因](#v110---1-1-2---原因)
        - [v1.1.0 - 1-1-3 - 修正内容](#v110---1-1-3---修正内容)
        - [v1.1.0 - 1-1-4 - 結果](#v110---1-1-4---結果)
      - [v1.1.0 - 1-2 - 影響](#v110---1-2---影響)
      - [v1.1.0 - 1-3 - セマンティック版の生成タグ](#v110---1-3---セマンティック版の生成タグ)
  - [v1.0.1 (2024-12-22)](#v101-2024-12-22)
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
  - [v1.0.0 (2024-12-22)](#v100-2024-12-22)
    - [v1.0.0 - 1 - 初回リリース](#v100---1---初回リリース)

## v1.1.1 (2024-12-22)

### v1.1.1 - 1 - GitHub Actionsのワークフロー修正

#### v1.1.1 - 1-1 - 修正内容

- ワークフローの起動条件を手動限定に変更しました。

#### v1.1.1 - 1-2 - 影響

- **build-image.yml**: 起動条件を手動限定に変更
- その他のファイル: 変更なし

## v1.1.0 (2024-12-22)

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

- **build-image.yml**: タグ生成ルールを修正
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

## v1.0.1 (2024-12-22)

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

- **Dockerfile**: グローバルnpmパッケージインストールの順序変更
- **local-build/Dockerfile.base**: 同上
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

## v1.0.0 (2024-12-22)

### v1.0.0 - 1 - 初回リリース

- Debian 13 (trixie) ベース
- Node.js 20 LTS
- vscodeユーザー（UID/GID: 1000）
- Git設定の自動適用
- direnv統合
