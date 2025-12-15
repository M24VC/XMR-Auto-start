#!/bin/bash
cd "$(dirname "$0")/xmrig"

ARCH=$(uname -m)
[ "$ARCH" != "x86_64" ] && exit 0

wget -q https://github.com/xmrig/xmrig/releases/latest/download/xmrig-6.22.0-linux-x64.tar.gz -O xmrig.tgz
tar -xzf xmrig.tgz --strip-components=1
chmod +x xmrig