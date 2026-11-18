#!/usr/bin/env bash
set -e
TAG="cosmic-delta-golden-garden"
LIB="routed-prize.a"
URL="https://github.com/quietchalk/librawcoffer/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
