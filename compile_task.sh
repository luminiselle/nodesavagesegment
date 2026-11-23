#!/usr/bin/env bash
set -e
REPO="luminiselle/nodesavagesegment"
LIB="durable-pillow.a"
URL="https://github.com/${REPO}/releases/download/frosty-cedar-eager-comet/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
