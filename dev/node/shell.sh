#!/bin/bash
# nodejs shell env

alias nr="npm run"
alias dev="npm run dev"
alias test="npm run test -- --watch"
alias ui="npm run test:ui"

t:s() {
  # test spec with escaped path
  npm run test -- $(printf '%q' $1)
}
