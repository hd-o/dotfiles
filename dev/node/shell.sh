#!/bin/bash
# nodejs shell env

alias nr="npm run"
alias nd="npm run dev"
alias nt="npm run test -- --watch"
alias ntu="npm run test:ui"

nts() {
  # test spec with escaped path
  npm run test -- $(printf '%q' $1)
}
