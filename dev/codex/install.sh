#!/bin/bash
set -o pipefail

curl -fsSL https://chatgpt.com/codex/install.sh | CODEX_NON_INTERACTIVE=1 sh || exit

mkdir -p ~/.codex
rm -f ~/.codex/config.toml
ln -sf ~/dotfiles/dev/codex/config.toml ~/.codex/config.toml
