#!/bin/sh
echo "[SOC LAB] Running test 2..."
cd /tmp || exit 1
stress --hdd 1 --hdd-bytes 2G --timeout 180 > /dev/null 2>&1
echo "[SOC LAB] Test 2 completed"