#!/bin/bash
set -e

cd "$(dirname "$0")/xmrig" || mkdir -p xmrig && cd xmrig

# 固定版本 + 跟隨 redirect
XMRIG_URL="https://github.com/xmrig/xmrig/releases/download/v6.22.0/xmrig-6.22.0-linux-x64.tar.gz"
wget -q -O xmrig.tgz -L "$XMRIG_URL"

# 檢查下載是否成功
if [ ! -s xmrig.tgz ]; then
    echo "Error: xmrig.tgz download failed"
    exit 1
fi

# 解壓
tar -xzf xmrig.tgz --strip-components=1

# 確認 xmrig binary 存在
if [ ! -f xmrig ]; then
    echo "Error: xmrig binary not found after extract"
    exit 1
fi

chmod +x xmrig
echo "[✓] xmrig downloaded and ready"