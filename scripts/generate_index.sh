#!/bin/bash
set -euo pipefail
shopt -s nullglob
export LANG=C.UTF-8
export LC_ALL=C.UTF-8

printf '%s\n' \
  '---' \
  'marp: true' \
  'theme: ect' \
  $'title: ECT3201 - Linguagem de Programa\u00e7\u00e3o' \
  '---' \
  '' \
  $'# ECT3201 - Linguagem de Programa\u00e7\u00e3o (C++)' \
  '' \
  $'Prof. \u00c9verton Santi' \
  '' \
  '---' \
  '' \
  '# Aulas' \
  '' > index.md

for file in slides/*.md; do
  name=$(basename "$file" .md)
  title=$(awk '/^# / { sub(/^# /, ""); print; exit }' "$file")
  num=$(echo "$name" | sed -n 's/^\([0-9][0-9]*\).*/\1/p')

  if [ -z "$title" ]; then
    title="$name"
  fi

  if [ -n "$num" ]; then
    echo "- [Aula $num - $title](slides/$name.html)" >> index.md
  else
    echo "- [$title](slides/$name.html)" >> index.md
  fi
done
