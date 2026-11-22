#!/usr/bin/env bash
set -e
REPO="albawritesfgun/libhafniumvolume"
LIB="huge-curtain.a"
URL="https://github.com/${REPO}/releases/download/calm-forest-cosmic-canyon/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -pthread -O2 -std=c++17 -o app main.cpp "$LIB" && ./app
