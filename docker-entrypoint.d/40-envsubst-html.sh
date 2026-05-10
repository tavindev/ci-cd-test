#!/bin/sh
set -e
: "${TEST_NUMBER:=}"
target=/usr/share/nginx/html/index.html
tmp="${target}.tmp"
envsubst '${TEST_NUMBER}' < "$target" > "$tmp"
chmod 644 "$tmp"
mv "$tmp" "$target"
