#!/usr/bin/env sh
set -eu

: "${PORT:?PORT must be set by Railway}"
: "${LOCAL_BACKEND_API_KEY:?LOCAL_BACKEND_API_KEY must be set}"

mkdir -p "$HOME" /workspace

exec agent-canvas --public --port "$PORT"
