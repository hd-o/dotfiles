#!/bin/bash
# http://opencode.ai/docs

curl -fsSL https://opencode.ai/install | bash

. ~/dotfiles/dev/opencode/config.sh

npm i -g openguardrails-instrumentation-opencode
