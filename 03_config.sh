#!/bin/bash
cd "$(dirname "$0")/xmrig"

cat > config.json <<EOF
{
  "autosave": true,
  "cpu": {
    "enabled": true,
    "huge-pages": false,
    "asm": true,
    "max-threads-hint": 60
  },
  "pools": [
    {
      "url": "pool.supportxmr.com:3333",
      "user": "你的XMR錢包.$(hostname)",
      "pass": "x"
    }
  ]
}
EOF