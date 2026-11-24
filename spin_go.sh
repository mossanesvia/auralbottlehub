#!/usr/bin/env bash
set -e
TAG="cosmic-badger-gentle-delta"
LIB="electric-storehouse.a"
URL="https://github.com/mossanesvia/auralbottlehub/releases/download/${TAG}/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
