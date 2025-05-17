#!/bin/bash

# スクリプトのあるディレクトリに移動
cd "$(dirname "$0")"

# 今日の日付を取得
TODAY=$(date +%F)
YEAR=$(date +%Y)
MONTH=$(date +%m)

# パスの構築
DIR="$YEAR/$MONTH"
FILE="$DIR/$TODAY.md"

# ディレクトリがなければ作成
mkdir -p "$DIR"

# ファイルがなければ作成してテンプレートを入れる
if [ ! -f "$FILE" ]; then
  echo "##" > "$FILE"
  echo "- " >> "$FILE"
  echo "Created: $TODAY"
  echo "$FILE created!"
else
  echo "$FILE already exists."
fi