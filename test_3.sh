#!/bin/sh
echo "[SOC LAB] Running test 3..."
cd /tmp || exit 1
stress --cpu 1 --vm 1 --vm-bytes 2G --hdd 1 --hdd-bytes 2G --timeout 180 > /dev/null 2>&1
echo "[SOC LAB] Test 3 completed"