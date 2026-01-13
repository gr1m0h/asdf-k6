#!/usr/bin/env bash

get_architecture() {
  local machine
  machine="$(uname -m)"
  case "${machine}" in
    x86_64) echo "amd64" ;;
    aarch64 | arm64) echo "arm64" ;;
    *)
      echo "Unknown machine architecture: ${machine}" >&2
      exit 1
      ;;
  esac
}

get_platform() {
  uname -s | tr '[:upper:]' '[:lower:]'
}
