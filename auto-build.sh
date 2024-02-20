#!/usr/bin/env bash

DIR=$(cd $(dirname "$0") && pwd)

mkdir -p "$DIR/output/"

inotifywait -mr -e close_write --include "^.*\.tex$" . |
  while read path action file; do
    cd "$path"
    lualatex $file
    mv *.pdf "$DIR/output/"
    rm *.aux *.out
    cd "$DIR"
  done
