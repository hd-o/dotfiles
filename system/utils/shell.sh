#!/bin/bash

warn() {
  local ts
  ts=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
  printf '\033[1;33m[%s] [WARN] [hd-o] %s\033[0m\n' "$ts" "$*" >&2
}
