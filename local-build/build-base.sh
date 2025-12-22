#!/bin/bash
# ========================================
# DevContainerベースイメージビルドスクリプト
# ========================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_IMAGE_NAME="223n-devcontainer-base"
BASE_IMAGE_TAG="latest"

echo "========================================="
echo "DevContainer ベースイメージのビルド"
echo "========================================="
echo ""
echo "イメージ名: ${BASE_IMAGE_NAME}:${BASE_IMAGE_TAG}"
echo ""

# Dockerfile.baseが存在するか確認
if [ ! -f "${SCRIPT_DIR}/Dockerfile.base" ]; then
    echo "❌ エラー: Dockerfile.base が見つかりません"
    exit 1
fi

# ベースイメージのビルド
echo "🔨 ベースイメージをビルドしています..."
docker build \
    -f "${SCRIPT_DIR}/Dockerfile.base" \
    -t "${BASE_IMAGE_NAME}:${BASE_IMAGE_TAG}" \
    "${SCRIPT_DIR}"

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ ベースイメージのビルドが完了しました！"
    echo ""
    echo "イメージ情報:"
    docker images "${BASE_IMAGE_NAME}:${BASE_IMAGE_TAG}"
    echo ""
    echo "📝 次のステップ:"
    echo "  1. VS Codeで 'Dev Containers: Rebuild Container' を実行"
    echo "  2. または、docker-compose を使用する場合は再起動"
    echo ""
else
    echo ""
    echo "❌ ビルドに失敗しました"
    exit 1
fi
