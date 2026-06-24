#!/usr/bin/env bash

set -euo pipefail

shellcheck --shell=bash --external-sources \
	bin/* lib/* scripts/*

shfmt --language-dialect bash --diff \
	bin/* lib/* scripts/*
