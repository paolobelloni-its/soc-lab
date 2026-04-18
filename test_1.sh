#!/bin/sh
echo "[SOC LAB] Running test 1..."
stress --cpu 2 --timeout 180 > /dev/null 2>&1
echo "[SOC LAB] Test 1 completed"