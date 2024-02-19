#!/usr/bin/env bash

inotifywait -m -e close_write --include "template\.tex$" . | while read path action file; do lualatex template.tex && mv template.pdf robert-baldwin-cv.pdf; done
