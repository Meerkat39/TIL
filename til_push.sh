#!/bin/bash

# 今日の日付を取得
today=$(date "+%Y-%m-%d")
filepath="$(date +%Y)/$(date +%m)/${today}.md"

# ファイルがあるか確認
if [ -f "$filepath" ]; then
  git add "$filepath"
  git commit -m "Add TIL for $today"
  git push
  echo "✅ Pushed today's TIL: $filepath"
else
  echo "❌ No TIL file for today ($filepath). Nothing to push."
fi